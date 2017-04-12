# DDS.sh
DDS es un script en bash que nos ayudara a bootear cualquier imagen .iso e .img y crear un USB Boot/Live..
No hay mucho que explicar del script, DDS utiliza el comando dd para hacer el copiado de .iso e img, entre otros camandos.
El scritp hara una comprobacion de esas dependencias que necesita para funcionar correctamente, en caso de no tenerla el sript no podra continuar y se cerrara automaticamente.
Es un sript bastante sencillo,pero de gran utilidad ya que todo estara disponible en pocos pasos..
# RECOMENDADO: 
  Mover el script a /usr/local/bin y asi poder utilizarlo desde culquier directorio en la terminal..
  sudo chmod +x DDS.sh
  sudo mv DDS.sh dds
  sudo mv dds /usr/local/bin
  sudo dds
# Caracteristicas:
- Imprimira en pantalla los discos disponibles conectados al equipo.. (ayuda a no confundir disco (usb) con particion)
- Formatear a fat32 el disco seleccionado.
- Desmonta el disco (usb)
- Imprime en pantalla solo archivos .iso / .img por separado.
- Bootea con dd + pv para  agregarle una barra de progreso y saber cuanto durar el copiado.

