import sys
import wave
import threading
import subprocess
from piper.voice import PiperVoice
from playsound import playsound

# Carrega o modelo de voz
model = "./model_voice/pt_BR-faber-medium.onnx"
voice = PiperVoice.load(model)

# Verifica se o texto foi passado como argumento
if len(sys.argv) < 2:
    text = "Por favor, forneça o texto como argumento."
    speed = 1.0  # Velocidade padrão
else:
    # Verifica se o último argumento é de velocidade
    try:
        speed = float(sys.argv[-1]) if sys.argv[-1].replace('.', '', 1).isdigit() else 1.0
        text = ' '.join(sys.argv[1:-1]) if speed != 1.0 else ' '.join(sys.argv[1:])
    except ValueError:
        speed = 1.0
        text = ' '.join(sys.argv[1:])

# Criar o arquivo de áudio WAV
with wave.open("output.wav", "w") as wav_file:
    wav_file.setnchannels(1)        # Mono
    wav_file.setsampwidth(2)        # 16 bits por amostra
    wav_file.setframerate(44100)    # Taxa de amostragem padrão
    voice.synthesize(text, wav_file)

# Ajustar a velocidade usando ffmpeg
if speed != 1.0:
    subprocess.run([
        "ffmpeg", "-y", "-i", "output.wav",
        "-filter:a", f"atempo={speed}", "output_adjusted.wav"
    ])
    audio_file = "output_adjusted.wav"
else:
    audio_file = "output.wav"

# Iniciar a reprodução em uma thread separada
player_thread = threading.Thread(target=playsound, args=(audio_file,))
player_thread.start()

# Monitorar entrada do usuário para cancelar a reprodução
print("Pressione 'q' e Enter para parar a reprodução.")
while player_thread.is_alive():
    if input().strip().lower() == 'q':
        player_thread.join(timeout=0)  # Tenta encerrar a thread
        break
