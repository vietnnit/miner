#!/bin/bash

LANGUAGE="EN"

set_language() {
  case $LANGUAGE in
    EN)
      M_ENTER_KEY="Enter your VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="The SixGPT Miner repository already exists."
      M_CLONE_REPO="Cloning the SixGPT Miner repository..."
      M_NO_DOCKER="Docker not found."
      M_NO_COMPOSE="Docker Compose not found."
      M_RUNNING="Running SixGPT Miner..."
      M_CHECK_LOG="Checking Ollama logs..."
      M_SELECT_ACTION="Select the next action:"
      M_USE_GPU="Do you want to use GPU? (y/n)"
      M_GPU_NOT_FOUND="No GPU found. Do you want to continue without GPU? (y/n)"
      M_START_COMPOSE="1) Start SixGPT Miner"
      M_STOP_COMPOSE="2) Stop Miner"
      M_PULL_LLAMA="3) Pull llama3.2 model (if download error occurs)"
      M_CHECK_LOGS="5) Check logs"
      M_CHECK_UPDATE="4) Check for updates"
      M_ENABLE_GPU="6) Re-enable GPU"
      M_REMOVE_GPU="7) Remove GPU"
      M_RESTART_MINER="8) Restart Miner"
      M_EXIT="9) Exit"
      M_INVALID="Invalid choice, please try again."
      M_EXIT_SCRIPT="Exiting script."
      M_UPDATE_PULL="Pulling latest updates from main..."
      M_SOURCE_BASHRC="Reloading ~/.bashrc..."
      M_INSTALL_DOCKER="Docker and Docker Compose not found. Do you want to install them? (y/n)"
      M_INSTALLING_DOCKER="Installing Docker..."
      M_INSTALLING_COMPOSE="Installing Docker Compose..."
      M_DOCKER_INSTALLED="Docker has been installed and started."
      M_COMPOSE_INSTALLED="Docker Compose has been installed."
      M_FILE_NOT_FOUND="File $DOCKER_COMPOSE_FILE not found. Make sure this file is in the correct directory."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE found."
      M_PULLING_LLAMA="Pulling llama3.2 model..."
      M_LOGS_CHECKED="Logs have been checked."
      M_GPU_CONFIG_ADDED="GPU configuration has been added."
      M_GPU_CONFIG_REMOVED="GPU configuration has been removed. The original copy is saved as docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="No GPU configuration found to remove."
      ;;

    ID)
      M_ENTER_KEY="Masukkan VANA_PRIVATE_KEY Anda: "
      M_REPO_EXISTS="Repository SixGPT Miner sudah ada."
      M_CLONE_REPO="Mengkloning repository SixGPT Miner..."
      M_NO_DOCKER="Docker tidak ditemukan."
      M_NO_COMPOSE="Docker Compose tidak ditemukan."
      M_RUNNING="Menjalankan SixGPT Miner..."
      M_CHECK_LOG="Memeriksa log Ollama..."
      M_SELECT_ACTION="Pilih tindakan selanjutnya:"
      M_USE_GPU="Apakah Anda ingin menggunakan GPU? (y/n)"
      M_GPU_NOT_FOUND="Tidak ada GPU yang ditemukan. Apakah Anda ingin melanjutkan tanpa GPU? (y/n)"
      M_START_COMPOSE="1) Mulai SixGPT Miner"
      M_STOP_COMPOSE="2) Hentikan Miner"
      M_PULL_LLAMA="3) Pull model llama3.2 (jika terjadi error download)"
      M_CHECK_LOGS="5) Periksa log"
      M_CHECK_UPDATE="4) Periksa pembaruan"
      M_ENABLE_GPU="6) Aktifkan kembali GPU"
      M_REMOVE_GPU="7) Hapus GPU"
      M_RESTART_MINER="8) Restart Miner"
      M_EXIT="9) Keluar"
      M_INVALID="Pilihan tidak valid, silakan coba lagi."
      M_EXIT_SCRIPT="Keluar dari skrip."
      M_UPDATE_PULL="Menarik pembaruan terbaru dari main..."
      M_SOURCE_BASHRC="Memuat ulang ~/.bashrc..."
      M_INSTALL_DOCKER="Docker dan Docker Compose tidak ditemukan. Apakah Anda ingin menginstalnya? (y/n)"
      M_INSTALLING_DOCKER="Menginstal Docker..."
      M_INSTALLING_COMPOSE="Menginstal Docker Compose..."
      M_DOCKER_INSTALLED="Docker telah diinstal dan dimulai."
      M_COMPOSE_INSTALLED="Docker Compose telah diinstal."
      M_FILE_NOT_FOUND="File $DOCKER_COMPOSE_FILE tidak ditemukan. Pastikan file ini berada di direktori yang benar."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE ditemukan."
      M_PULLING_LLAMA="Mengambil model llama3.2..."
      M_LOGS_CHECKED="Log telah diperiksa."
      M_GPU_CONFIG_ADDED="Konfigurasi GPU telah ditambahkan."
      M_GPU_CONFIG_REMOVED="Konfigurasi GPU telah dihapus. Salinan asli disimpan sebagai docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="Tidak ada konfigurasi GPU yang ditemukan untuk dihapus."
      ;;

    RU)
      M_ENTER_KEY="Введите ваш VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="Репозиторий SixGPT Miner уже существует."
      M_CLONE_REPO="Клонирование репозитория SixGPT Miner..."
      M_NO_DOCKER="Docker не найден."
      M_NO_COMPOSE="Docker Compose не найден."
      M_RUNNING="Запуск SixGPT Miner..."
      M_CHECK_LOG="Проверка журналов Ollama..."
      M_SELECT_ACTION="Выберите следующее действие:"
      M_USE_GPU="Хотите использовать GPU? (y/n)"
      M_GPU_NOT_FOUND="GPU не обнаружен. Хотите продолжить без GPU? (y/n)"
      M_START_COMPOSE="1) Запустить SixGPT Miner"
      M_STOP_COMPOSE="2) Остановить Miner"
      M_PULL_LLAMA="3) Загрузить модель llama3.2 (если ошибка загрузки)"
      M_CHECK_LOGS="5) Проверить журналы"
      M_CHECK_UPDATE="4) Проверить обновления"
      M_ENABLE_GPU="6) Снова включить GPU"
      M_REMOVE_GPU="7) Удалить GPU"
      M_RESTART_MINER="8) Перезапустить Miner"
      M_EXIT="9) Выход"
      M_INVALID="Недействительный выбор, попробуйте еще раз."
      M_EXIT_SCRIPT="Выход из скрипта."
      M_UPDATE_PULL="Получение последних обновлений из main..."
      M_SOURCE_BASHRC="Перезагрузка ~/.bashrc..."
      M_INSTALL_DOCKER="Docker и Docker Compose не найдены. Вы хотите их установить? (y/n)"
      M_INSTALLING_DOCKER="Установка Docker..."
      M_INSTALLING_COMPOSE="Установка Docker Compose..."
      M_DOCKER_INSTALLED="Docker установлен и запущен."
      M_COMPOSE_INSTALLED="Docker Compose установлен."
      M_FILE_NOT_FOUND="Файл $DOCKER_COMPOSE_FILE не найден. Убедитесь, что он находится в правильном каталоге."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE найден."
      M_PULLING_LLAMA="Загрузка модели llama3.2..."
      M_LOGS_CHECKED="Журналы проверены."
      M_GPU_CONFIG_ADDED="Конфигурация GPU добавлена."
      M_GPU_CONFIG_REMOVED="Конфигурация GPU удалена. Оригинальная копия сохранена как docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="Конфигурация GPU не найдена для удаления."
      ;;

    CN)
      M_ENTER_KEY="请输入您的 VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="SixGPT Miner 仓库已存在。"
      M_CLONE_REPO="克隆 SixGPT Miner 仓库..."
      M_NO_DOCKER="未找到 Docker。"
      M_NO_COMPOSE="未找到 Docker Compose。"
      M_RUNNING="正在运行 SixGPT Miner..."
      M_CHECK_LOG="检查 Ollama 日志..."
      M_SELECT_ACTION="选择下一个操作："
      M_USE_GPU="您想使用 GPU 吗？（y/n）"
      M_GPU_NOT_FOUND="未检测到 GPU。您想继续没有 GPU 吗？（y/n）"
      M_START_COMPOSE="1）启动 SixGPT Miner"
      M_STOP_COMPOSE="2）停止矿工"
      M_PULL_LLAMA="3）拉取 llama3.2 模型（如果下载错误）"
      M_CHECK_LOGS="5）检查日志"
      M_CHECK_UPDATE="4）检查更新"
      M_ENABLE_GPU="6）重新启用 GPU"
      M_REMOVE_GPU="7）删除 GPU"
      M_RESTART_MINER="8）重启矿工"
      M_EXIT="9）退出"
      M_INVALID="无效选择，请重试。"
      M_EXIT_SCRIPT="退出脚本。"
      M_UPDATE_PULL="从 main 拉取最新更新..."
      M_SOURCE_BASHRC="重新加载 ~/.bashrc..."
      M_INSTALL_DOCKER="未找到 Docker 和 Docker Compose。您想安装它们吗？（y/n）"
      M_INSTALLING_DOCKER="正在安装 Docker..."
      M_INSTALLING_COMPOSE="正在安装 Docker Compose..."
      M_DOCKER_INSTALLED="Docker 已安装并启动。"
      M_COMPOSE_INSTALLED="Docker Compose 已安装。"
      M_FILE_NOT_FOUND="文件 $DOCKER_COMPOSE_FILE 未找到。确保该文件位于正确的目录中。"
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE 找到了。"
      M_PULLING_LLAMA="正在拉取 llama3.2 模型..."
      M_LOGS_CHECKED="日志已检查。"
      M_GPU_CONFIG_ADDED="GPU 配置已添加。"
      M_GPU_CONFIG_REMOVED="GPU 配置已删除。原始备份保存为 docker-compose.yml.bak。"
      M_MISSING_GPU_CONFIG="没有找到可删除的 GPU 配置。"
      ;;

    TR)
      M_ENTER_KEY="VANA_PRIVATE_KEY'inizi girin: "
      M_REPO_EXISTS="SixGPT Miner deposu zaten var."
      M_CLONE_REPO="SixGPT Miner deposu klonlanıyor..."
      M_NO_DOCKER="Docker bulunamadı."
      M_NO_COMPOSE="Docker Compose bulunamadı."
      M_RUNNING="SixGPT Miner çalıştırılıyor..."
      M_CHECK_LOG="Ollama logları kontrol ediliyor..."
      M_SELECT_ACTION="Sonraki eylemi seçin:"
      M_USE_GPU="GPU kullanmak istiyor musunuz? (y/n)"
      M_GPU_NOT_FOUND="GPU bulunamadı. GPU'suz devam etmek ister misiniz? (y/n)"
      M_START_COMPOSE="1) SixGPT Miner'ı başlat"
      M_STOP_COMPOSE="2) Miner'ı durdur"
      M_PULL_LLAMA="3) llama3.2 modelini çek (indirme hatası varsa)"
      M_CHECK_LOGS="5) Logları kontrol et"
      M_CHECK_UPDATE="4) Güncellemeleri kontrol et"
      M_ENABLE_GPU="6) GPU'yu tekrar etkinleştir"
      M_REMOVE_GPU="7) GPU'yu kaldır"
      M_RESTART_MINER="8) Miner'ı yeniden başlat"
      M_EXIT="9) Çık"
      M_INVALID="Geçersiz seçim, lütfen tekrar deneyin."
      M_EXIT_SCRIPT="Skriptten çıkılıyor."
      M_UPDATE_PULL="Ana'dan en son güncellemeleri çekiyor..."
      M_SOURCE_BASHRC="~/.bashrc dosyasını yeniden yüklüyor..."
      M_INSTALL_DOCKER="Docker ve Docker Compose bulunamadı. Kurmak ister misiniz? (y/n)"
      M_INSTALLING_DOCKER="Docker kuruluyor..."
      M_INSTALLING_COMPOSE="Docker Compose kuruluyor..."
      M_DOCKER_INSTALLED="Docker kuruldu ve başlatıldı."
      M_COMPOSE_INSTALLED="Docker Compose kuruldu."
      M_FILE_NOT_FOUND="Dosya $DOCKER_COMPOSE_FILE bulunamadı. Bu dosyanın doğru dizinde olduğundan emin olun."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE bulundu."
      M_PULLING_LLAMA="llama3.2 modelini çekiyor..."
      M_LOGS_CHECKED="Loglar kontrol edildi."
      M_GPU_CONFIG_ADDED="GPU yapılandırması eklendi."
      M_GPU_CONFIG_REMOVED="GPU yapılandırması kaldırıldı. Orijinal kopya docker-compose.yml.bak olarak kaydedildi."
      M_MISSING_GPU_CONFIG="Silinecek GPU yapılandırması bulunamadı."
      ;;

    HI)
      M_ENTER_KEY="अपना VANA_PRIVATE_KEY दर्ज करें: "
      M_REPO_EXISTS="SixGPT Miner रिपोजिटरी पहले से मौजूद है।"
      M_CLONE_REPO="SixGPT Miner रिपोजिटरी को क्लोन किया जा रहा है..."
      M_NO_DOCKER="Docker नहीं मिला।"
      M_NO_COMPOSE="Docker Compose नहीं मिला।"
      M_RUNNING="SixGPT Miner चल रहा है..."
      M_CHECK_LOG="Ollama के लॉग की जांच कर रहे हैं..."
      M_SELECT_ACTION="अगला कार्य चुनें:"
      M_USE_GPU="क्या आप GPU का उपयोग करना चाहते हैं? (y/n)"
      M_GPU_NOT_FOUND="GPU नहीं मिला। क्या आप GPU के बिना जारी रखना चाहते हैं? (y/n)"
      M_START_COMPOSE="1) SixGPT Miner शुरू करें"
      M_STOP_COMPOSE="2) Miner रोकें"
      M_PULL_LLAMA="3) llama3.2 मॉडल खींचें (यदि डाउनलोड में त्रुटि हो)"
      M_CHECK_LOGS="5) लॉग जांचें"
      M_CHECK_UPDATE="4) अपडेट की जांच करें"
      M_ENABLE_GPU="6) GPU को फिर से सक्षम करें"
      M_REMOVE_GPU="7) GPU को हटाएं"
      M_RESTART_MINER="8) Miner को पुनः प्रारंभ करें"
      M_EXIT="9) बाहर निकलें"
      M_INVALID="अवैध चयन, कृपया फिर से प्रयास करें।"
      M_EXIT_SCRIPT="स्क्रिप्ट से बाहर निकलें।"
      M_UPDATE_PULL="मुख्य से नवीनतम अपडेट खींचना..."
      M_SOURCE_BASHRC="~/.bashrc को फिर से लोड कर रहे हैं..."
      M_INSTALL_DOCKER="Docker और Docker Compose नहीं मिले। क्या आप उन्हें स्थापित करना चाहते हैं? (y/n)"
      M_INSTALLING_DOCKER="Docker स्थापित किया जा रहा है..."
      M_INSTALLING_COMPOSE="Docker Compose स्थापित किया जा रहा है..."
      M_DOCKER_INSTALLED="Docker स्थापित किया गया है और प्रारंभ हो गया है।"
      M_COMPOSE_INSTALLED="Docker Compose स्थापित किया गया है।"
      M_FILE_NOT_FOUND="फाइल $DOCKER_COMPOSE_FILE नहीं मिली। सुनिश्चित करें कि यह सही निर्देशिका में है।"
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE पाया गया।"
      M_PULLING_LLAMA="llama3.2 मॉडल खींचा जा रहा है..."
      M_LOGS_CHECKED="लॉग की जांच की गई।"
      M_GPU_CONFIG_ADDED="GPU कॉन्फ़िगरेशन जोड़ा गया है।"
      M_GPU_CONFIG_REMOVED="GPU कॉन्फ़िगरेशन हटा दिया गया है। मूल कॉपी docker-compose.yml.bak के रूप में सहेजी गई है।"
      M_MISSING_GPU_CONFIG="हटाने के लिए कोई GPU कॉन्फ़िगरेशन नहीं मिला।"
      ;;

    AR)
      M_ENTER_KEY="أدخل VANA_PRIVATE_KEY الخاص بك: "
      M_REPO_EXISTS="مستودع SixGPT Miner موجود بالفعل."
      M_CLONE_REPO="يتم استنساخ مستودع SixGPT Miner..."
      M_NO_DOCKER="لم يتم العثور على Docker."
      M_NO_COMPOSE="لم يتم العثور على Docker Compose."
      M_RUNNING="يتم تشغيل SixGPT Miner..."
      M_CHECK_LOG="جارٍ التحقق من سجلات Ollama..."
      M_SELECT_ACTION="اختر الإجراء التالي:"
      M_USE_GPU="هل تريد استخدام GPU؟ (y/n)"
      M_GPU_NOT_FOUND="لم يتم العثور على GPU. هل تريد الاستمرار بدون GPU؟ (y/n)"
      M_START_COMPOSE="1) بدء SixGPT Miner"
      M_STOP_COMPOSE="2) إيقاف المُعدِّن"
      M_PULL_LLAMA="3) سحب نموذج llama3.2 (في حالة حدوث خطأ في التنزيل)"
      M_CHECK_LOGS="5) تحقق من السجلات"
      M_CHECK_UPDATE="4) تحقق من التحديثات"
      M_ENABLE_GPU="6) إعادة تمكين GPU"
      M_REMOVE_GPU="7) إزالة GPU"
      M_RESTART_MINER="8) إعادة تشغيل المُعدِّن"
      M_EXIT="9) خروج"
      M_INVALID="اختيار غير صالح، يرجى المحاولة مرة أخرى."
      M_EXIT_SCRIPT="الخروج من البرنامج النصي."
      M_UPDATE_PULL="سحب أحدث التحديثات من الرئيسي..."
      M_SOURCE_BASHRC="إعادة تحميل ~/.bashrc..."
      M_INSTALL_DOCKER="لم يتم العثور على Docker و Docker Compose. هل تريد تثبيتها؟ (y/n)"
      M_INSTALLING_DOCKER="يتم تثبيت Docker..."
      M_INSTALLING_COMPOSE="يتم تثبيت Docker Compose..."
      M_DOCKER_INSTALLED="تم تثبيت Docker وبدء تشغيله."
      M_COMPOSE_INSTALLED="تم تثبيت Docker Compose."
      M_FILE_NOT_FOUND="لم يتم العثور على الملف $DOCKER_COMPOSE_FILE. تأكد من وجود هذا الملف في الدليل الصحيح."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE تم العثور عليه."
      M_PULLING_LLAMA="جارٍ سحب نموذج llama3.2..."
      M_LOGS_CHECKED="تم فحص السجلات."
      M_GPU_CONFIG_ADDED="تمت إضافة تكوين GPU."
      M_GPU_CONFIG_REMOVED="تمت إزالة تكوين GPU. تم حفظ النسخة الأصلية كـ docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="لم يتم العثور على تكوين GPU للحذف."
      ;;

    TH)
      M_ENTER_KEY="กรุณาใส่ VANA_PRIVATE_KEY ของคุณ: "
      M_REPO_EXISTS="ที่เก็บ SixGPT Miner มีอยู่แล้ว."
      M_CLONE_REPO="กำลังโคลนที่เก็บ SixGPT Miner..."
      M_NO_DOCKER="ไม่พบ Docker."
      M_NO_COMPOSE="ไม่พบ Docker Compose."
      M_RUNNING="กำลังรัน SixGPT Miner..."
      M_CHECK_LOG="กำลังตรวจสอบบันทึกของ Ollama..."
      M_SELECT_ACTION="เลือกการดำเนินการถัดไป:"
      M_USE_GPU="คุณต้องการใช้ GPU หรือไม่? (y/n)"
      M_GPU_NOT_FOUND="ไม่พบ GPU. คุณต้องการดำเนินการต่อโดยไม่ใช้ GPU หรือไม่? (y/n)"
      M_START_COMPOSE="1) เริ่ม SixGPT Miner"
      M_STOP_COMPOSE="2) หยุด Miner"
      M_PULL_LLAMA="3) ดึงโมเดล llama3.2 (ถ้ามีข้อผิดพลาดในการดาวน์โหลด)"
      M_CHECK_LOGS="5) ตรวจสอบบันทึก"
      M_CHECK_UPDATE="4) ตรวจสอบการอัปเดต"
      M_ENABLE_GPU="6) เปิดใช้งาน GPU อีกครั้ง"
      M_REMOVE_GPU="7) ลบ GPU"
      M_RESTART_MINER="8) รีสตาร์ท Miner"
      M_EXIT="9) ออกจากระบบ"
      M_INVALID="ตัวเลือกไม่ถูกต้อง โปรดลองอีกครั้ง."
      M_EXIT_SCRIPT="ออกจากสคริปต์."
      M_UPDATE_PULL="กำลังดึงการอัปเดตล่าสุดจาก main..."
      M_SOURCE_BASHRC="กำลังโหลด ~/.bashrc ใหม่..."
      M_INSTALL_DOCKER="ไม่พบ Docker และ Docker Compose คุณต้องการติดตั้งหรือไม่? (y/n)"
      M_INSTALLING_DOCKER="กำลังติดตั้ง Docker..."
      M_INSTALLING_COMPOSE="กำลังติดตั้ง Docker Compose..."
      M_DOCKER_INSTALLED="Docker ได้ติดตั้งและเริ่มต้นแล้ว."
      M_COMPOSE_INSTALLED="Docker Compose ได้ติดตั้งแล้ว."
      M_FILE_NOT_FOUND="ไม่พบไฟล์ $DOCKER_COMPOSE_FILE. โปรดตรวจสอบให้แน่ใจว่าไฟล์นี้อยู่ในไดเรกทอรีที่ถูกต้อง."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE พบแล้ว."
      M_PULLING_LLAMA="กำลังดึงโมเดล llama3.2..."
      M_LOGS_CHECKED="ได้ตรวจสอบบันทึกแล้ว."
      M_GPU_CONFIG_ADDED="ได้เพิ่มการกำหนดค่า GPU."
      M_GPU_CONFIG_REMOVED="ได้ลบการกำหนดค่า GPU. สำเนาต้นฉบับถูกบันทึกเป็น docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="ไม่พบการกำหนดค่า GPU สำหรับการลบ."
      ;;
      
    *)
      echo "Language not supported."
      exit 1
      ;;
  esac
}

echo "Select Language | Pilih Bahasa | Выберите язык | 选择语言 | Dil Seç | भाषा का चयन करें | اختر اللغة | ประเทศไทย"
echo "1) English | 2) Bahasa Indonesia | 3) Russian | 4) Chinese | 5) Turkish | 6) Hindi | 7) Arabic| 8) Thai"
read -p "Choose language (1-7): " lang_choice


case $lang_choice in
  1) LANGUAGE="EN";;
  2) LANGUAGE="ID";;
  3) LANGUAGE="RU";;
  4) LANGUAGE="CN";;
  5) LANGUAGE="TR";;
  6) LANGUAGE="HI";;
  7) LANGUAGE="AR";;
  8) LANGUAGE="TH";;
  *) echo "Invalid choice."; exit 1;;
esac

set_language
echo "Language set to $LANGUAGE"

echo "$M_SOURCE_BASHRC"
source ~/.bashrc
check_gpu() {
  echo "Checking GPU..."
  if command -v nvidia-smi &> /dev/null; then
    GPU_TYPE="NVIDIA"
    GPU_MODEL=$(nvidia-smi --query-gpu=name --format=csv,noheader)
    GPU_MEMORY=$(nvidia-smi --query-gpu=memory.total --format=csv,noheader)
    echo "Detected NVIDIA GPU: $GPU_MODEL with $GPU_MEMORY memory"
  elif command -v lspci &> /dev/null && lspci | grep -i 'vga' | grep -i 'amd' &> /dev/null; then
    GPU_TYPE="AMD"
    GPU_MODEL=$(lspci | grep -i 'vga' | grep -i 'amd' | awk -F ': ' '{print $2}')
    GPU_MEMORY="N/A" # AMD GPUs often require additional tools for memory info
    echo "Detected AMD GPU: $GPU_MODEL"
  else
    GPU_TYPE="None"
    GPU_MODEL="N/A"
    GPU_MEMORY="N/A"
    echo "No compatible GPU detected."
  fi
}

check_cpu() {
  echo "Checking CPU..."
  if grep -q "model name" /proc/cpuinfo; then
    CPU_TYPE=$(grep -m 1 "model name" /proc/cpuinfo | awk -F: '{print $2}' | xargs)
    CPU_CORES=$(grep -c "processor" /proc/cpuinfo)
    echo "Detected CPU: $CPU_TYPE with $CPU_CORES cores"
  elif command -v lscpu &> /dev/null; then
    CPU_TYPE=$(lscpu | grep "Model name" | awk -F: '{print $2}' | xargs)
    CPU_CORES=$(lscpu | grep "^CPU(s):" | awk '{print $2}')
    echo "Detected CPU: $CPU_TYPE with $CPU_CORES cores"
  else
    CPU_TYPE="Unknown"
    CPU_CORES="Unknown"
    echo "Unable to detect CPU type or core count."
  fi
}

check_ram() {
  echo "Checking RAM..."
  RAM_SIZE=$(free -h --si | awk '/^Mem:/ {print $2}')
  AVAILABLE_RAM=$(free -h --si | awk '/^Mem:/ {print $7}')
  SWAP_TOTAL=$(free -h --si | awk '/^Swap:/ {print $2}')
  SWAP_FREE=$(free -h --si | awk '/^Swap:/ {print $4}')
  echo "Total RAM: $RAM_SIZE, Available RAM: $AVAILABLE_RAM"
  echo "Total Swap: $SWAP_TOTAL, Free Swap: $SWAP_FREE"
}
load_env_file() {
  if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
  else
    echo ".env file not found. Creating a new .env file with necessary configurations."
    touch .env
  fi
}

check_vana_private_key() {
  local private_key_regex='^[0-9a-fA-F]{64}$'
  load_env_file
  
  if [ -z "${VANA_PRIVATE_KEY}" ]; then
    echo "VANA_PRIVATE_KEY is not set. Please enter your private key (64-character hexadecimal):"
    read -r VANA_PRIVATE_KEY
    echo "VANA_PRIVATE_KEY=${VANA_PRIVATE_KEY}" >> .env
  elif [[ ! "$VANA_PRIVATE_KEY" =~ $private_key_regex ]]; then
    echo "Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
    exit 1
  else
    echo "VANA_PRIVATE_KEY is valid and loaded from .env."
  fi
}

check_vana_network() {
  load_env_file
  if [ -z "${VANA_NETWORK}" ]; then
    echo "Please enter the network (default is 'moksha'):"
    read -r VANA_NETWORK
    VANA_NETWORK="${VANA_NETWORK:-moksha}"
    echo "VANA_NETWORK=${VANA_NETWORK}" >> .env
  else
    echo "VANA_NETWORK is set to: $VANA_NETWORK."
  fi
}

check_ollama_api() {
  load_env_file
  if [ -z "${OLLAMA_API_URL}" ]; then
    echo "Please enter the API URL (default is 'http://ollama:11434/api'):"
    read -r OLLAMA_API_URL
    OLLAMA_API_URL="${OLLAMA_API_URL:-http://ollama:11434/api}"
    echo "OLLAMA_API_URL=${OLLAMA_API_URL}" >> .env
  else
    echo "OLLAMA_API_URL is set to: $OLLAMA_API_URL."
  fi
}

if ! command -v docker &> /dev/null; then
    echo "$M_NO_DOCKER"
    echo "$M_INSTALL_DOCKER"
    read -p "> " install_choice
    if [[ $install_choice == "y" || $install_choice == "Y" ]]; then
        echo "Installing Docker..."
        sudo apt-get update
        sudo apt-get install -y docker.io
        sudo systemctl start docker
        sudo systemctl enable docker
        echo "Docker installed and started."
    else
        echo "User chose not to install Docker. Exiting."
        exit 1
    fi
else
    echo "Docker is installed."
fi
if ! command -v docker-compose &> /dev/null; then
    echo "$M_NO_COMPOSE"
    echo "$M_INSTALL_DOCKER"
    read -p "> " install_choice
    if [[ $install_choice == "y" || $install_choice == "Y" ]]; then
        echo "Installing Docker Compose..."
        sudo apt-get install -y docker-compose 
        sudo apt-get install docker-compose-plugin -y
        pip install -U docker
        echo "Docker Compose installed."
    else
        echo "User chose not to install Docker Compose. Exiting."
        exit 1
    fi
else
    echo "Docker Compose is installed."
fi
DOCKER_COMPOSE_FILE="docker-compose.yml"

if [[ ! -f "$DOCKER_COMPOSE_FILE" ]]; then
    echo "File $DOCKER_COMPOSE_FILE not found. Creating a new file with default configuration..."

    cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
    echo "$DOCKER_COMPOSE_FILE has been created with default configuration."
else
    echo "$DOCKER_COMPOSE_FILE found."
fi
read -p "$M_USE_GPU " use_gpu_choice
echo "User chose to use GPU: $use_gpu_choice"

if [[ $use_gpu_choice == "y" || $use_gpu_choice == "Y" ]]; then
    if command -v nvidia-smi &> /dev/null && nvidia-smi &> /dev/null; then
        echo "NVIDIA GPU found."
        cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
        echo "GPU configuration added to $DOCKER_COMPOSE_FILE."
    elif command -v rocm-smi &> /dev/null && rocm-smi &> /dev/null; then
        echo "AMD GPU found."
        cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
        echo "GPU configuration added to $DOCKER_COMPOSE_FILE."
    else
        echo "$M_GPU_NOT_FOUND"
        read -p "$M_CONTINUE_WITHOUT_GPU " continue_without_gpu
        echo "User choice to continue without GPU: $continue_without_gpu"
        if [[ $continue_without_gpu != "y" && $continue_without_gpu != "Y" ]]; then
            echo "User chose not to continue without GPU. Exiting."
            exit 1
        fi
        cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
        echo "Non-GPU configuration added to $DOCKER_COMPOSE_FILE."
    fi
else
    if sed -i.bak '/deploy:/,/capabilities: \[gpu\]/d' "$DOCKER_COMPOSE_FILE"; then
        echo "GPU configuration removed. Original backup is saved as docker-compose.yml.bak."
    else
        echo "No GPU configurations found to delete."
    fi
fi

check_gpu
check_cpu
check_ram
check_vana_private_key
check_vana_network
check_ollama_api
while true; do
  echo "  ______    _____   ____  ____     ______   _______    _________  "
  echo ".' ____ \  |_   _| |_  _||_  _|  .' ___  | |_   __ \  |  _   _  | "
  echo "| (___ \_|   | |     \ \  / /   / .'   \_|   | |__) | |_/ | | \_| "
  echo " _.____\`.    | |      > ' <    | |  ____     |  ___/      | |     "
  echo "| \____) |  _| |_   _/ /'\` \_  \ \`._]   |    |  |        _| |_    "
  echo " \______.' |_____| |____||____|  \`.____.'    |__|       |_____|   "
  echo "_____________________________________________________________________"
  echo "|                                                                   |"
  echo "|SixGPT is a decentralized synthetic data generation platform       |"
  echo "|built on the Vana network.                                         |"
  echo "|🎉 We welcome your contributions! 🎉                               |"
  echo "|Feel free to contribute at: https://github.com/sixgpt/miner.git    |"
  echo "|___________________________________________________________________|"
  echo "System Specifications: "
  echo "CPU:              $CPU_TYPE"
  echo "CPU Cores:        $CPU_CORES"
  echo "GPU:              $GPU_MODEL ($GPU_TYPE)"
  echo "GPU Memory:       $GPU_MEMORY"
  echo "Total RAM:        $RAM_SIZE"
  echo "Available RAM:    $AVAILABLE_RAM"
  echo "___________________________________________________________________"
  echo "$M_SELECT_ACTION"
  echo "$M_START_COMPOSE"
  echo "$M_STOP_COMPOSE"
  echo "$M_PULL_LLAMA"
  echo "$M_CHECK_LOGS"
  echo "$M_CHECK_UPDATE"
  echo "$M_ENABLE_GPU"
  echo "$M_REMOVE_GPU"
  echo "$M_RESTART_MINER"
  echo "$M_EXIT"
  read -p "> " choice
  echo "User choice: $choice"
  case $choice in
    1)
      echo "$M_RUNNING"
      docker-compose up -d
      echo "Docker containers started."
      ;;
    2)
      echo "Stopping miner..."
      docker-compose down
      echo "$M_EXIT_SCRIPT"
      ;;
    3)
      echo "Pulling llama3.2 model..."
      docker exec -it miner-ollama-1 /bin/bash -c "ollama pull llama3.2"
      echo "Model pulled."
      ;;
    4)
      echo "$M_UPDATE_PULL"
      git pull origin main
      echo "Updates pulled from main."
      ;;
    5)
      echo "$M_CHECK_LOG"
      docker-compose logs -f
      echo "Logs checked."
      trap - SIGINT
      ;;
  6)
      echo "Enabling GPU configuration by recreating docker-compose.yml..."
      DOCKER_COMPOSE_FILE="docker-compose.yml"
      if [[ -f "$DOCKER_COMPOSE_FILE" ]]; then
          echo "Removing existing $DOCKER_COMPOSE_FILE..."
          rm "$DOCKER_COMPOSE_FILE"
      fi
      cat <<EOL > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOL

      echo "New $DOCKER_COMPOSE_FILE created with GPU configuration."
      ;;

  7)
      echo "Enabling CPU configuration by recreating docker-compose.yml..."
      DOCKER_COMPOSE_FILE="docker-compose.yml"
      if [[ -f "$DOCKER_COMPOSE_FILE" ]]; then
          echo "Removing existing $DOCKER_COMPOSE_FILE..."
          rm "$DOCKER_COMPOSE_FILE"
      fi
      cat <<EOL > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOL
      echo "New $DOCKER_COMPOSE_FILE created with CPU-only configuration."
      ;;
    8)
      echo "Restarting miner..."
      docker-compose down && docker-compose build && docker-compose up -d
      echo "Miner restarted."
      ;;
    9)
      echo "$M_EXIT_SCRIPT"
      exit 0
      ;;
    *)
      echo "$M_INVALID"
      ;;
  esac
done