# 📱 Flutter Wireless Debugging (Wi-Fi)

Run your Flutter app on a physical Android device **without USB cable**.

---

## ⚡ Prerequisites
- Phone & PC on the **same Wi-Fi network**
- USB debugging enabled (first-time setup)
- ADB installed (comes with Flutter SDK)

---

## 🔌 First-Time Setup (WITH USB)

1. Connect phone via USB

2. Verify device:
   ```bash
   flutter devices

3. Enable wireless mode:

   ```bash
   adb tcpip 5555
   ```

4. Get your phone IP:

   * Settings → About → Status → **IP Address**

5. Disconnect USB

6. Connect over Wi-Fi:

   ```bash
   adb connect <PHONE_IP>:5555
   ```

---

## 🚀 Run Your App

```bash
flutter run
```

---

## 🔁 Next Time (NO USB needed)

1. Make sure:

   * Same Wi-Fi network

2. Connect:

   ```bash
   adb connect <PHONE_IP>:5555
   ```

3. Run:

   ```bash
   flutter run
   ```

---

## 🔄 Useful Commands

* Hot reload:

  ```bash
  r
  ```

* Hot restart:

  ```bash
  R
  ```

* Check devices:

  ```bash
  flutter devices
  ```

---

## ❗ Troubleshooting

* Device not found:

  ```bash
  adb kill-server
  adb start-server
  adb connect <PHONE_IP>:5555
  ```

* Make sure:

  * Same Wi-Fi network
  * No VPN blocking connection

---

## 🧠 Notes

* You only need USB **once** (unless debugging resets)
* Bluetooth is **not supported**
* Wi-Fi debugging may disconnect occasionally → just reconnect

---