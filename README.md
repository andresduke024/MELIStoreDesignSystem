# MELIStoreDesignSystem

**MELIStoreDesignSystem** es un módulo desarrollado en Swift que forma parte de la aplicación MELIStore. Este módulo proporciona un sistema de diseño unificado, incluyendo componentes de interfaz de usuario reutilizables y estilos coherentes, para garantizar una experiencia de usuario consistente en toda la aplicación.

## Características

- **Componentes de UI Reutilizables**: Ofrece una colección de componentes de interfaz de usuario personalizados que pueden ser utilizados en diferentes partes de la aplicación.
- **Estilos y Temas**: Define estilos y temas coherentes para mantener una apariencia uniforme en toda la aplicación.
- **Integración con MELIStoreCore**: Se integra con el módulo `MELIStoreCore` para utilizar modelos y servicios esenciales.

## Requisitos del Sistema

- **Plataforma**: iOS 14.0 o superior
- **Lenguaje**: Swift 5.0 o superior
- **Dependencias**:
  - [MELIStoreCore](https://github.com/andresduke024/MELIStoreCore/tree/feature/initial): Módulo central que proporciona modelos y servicios esenciales.

## Instalación

Para integrar `MELIStoreDesignSystem` en tu proyecto, puedes utilizar [Swift Package Manager](https://swift.org/package-manager/):

1. En Xcode, navega a `File` > `Swift Packages` > `Add Package Dependency`.
2. Ingresa la URL del repositorio: `https://github.com/andresduke024/MELIStoreDesignSystem`.
3. Selecciona la rama `feature/initial` y sigue las instrucciones para completar la integración.

# 🚀 Setup Automático con Makefile

Este proyecto utiliza un archivo `Makefile` para configurar el entorno de desarrollo de forma automática y segura. Incluye herramientas como `SwiftLint`, `pre-commit` y hooks de Git.

---

## 🛠 Requisitos Previos

- macOS con [Homebrew](https://brew.sh/) instalado.
- Git.
- Swift >= 5.9.
- Swift Package Manager (SPM).
- `make` — disponible por defecto en macOS.

---

## ⚙️ ¿Qué hace el `Makefile`?

Con solo ejecutar `make`, se realizan las siguientes acciones:

### 🔹 1. `swiftlint`
Verifica si `SwiftLint` está instalado, y si no lo está, lo instala con Homebrew.

> SwiftLint es una herramienta que verifica el estilo de tu código Swift según convenciones definidas.

---

### 🔹 2. `precommit`
Verifica si `pre-commit` está instalado, lo instala si es necesario y configura un hook de pre-commit automático.

> `pre-commit` permite validar código antes de hacer commits. En este proyecto se encarga de:
> - Ejecutar `swiftlint` sobre los archivos modificados.

---

### 🔹 3. `prepush`
Crea un hook de Git llamado `pre-push`, que se activa automáticamente antes de realizar un `git push`.

Este hook:
- Corre `pre-commit` en todos los archivos.
- Ejecuta los tests con `swift test`.
- Si algo falla, el push se cancela.

---

### 🔹 4. `lint-fix`
Comandos adicionales:

- `make lint-fix`: intenta corregir errores de lint automáticamente usando `swiftlint --fix`.

---

## 🧪 Uso del `Makefile`

### 👉 Configuración inicial

Solo es necesario que ejecutes el comando "make" en tu terminal **(sobre la raíz del proyecto)** y las configuraciones descritas anteriormente seran aplicadas al proyecto.

```bash
make
```

## 📁 Estructura esperada

Asegurate de que siempre existan los siguientes archivos en el proyecto:

```
├── Makefile
├── .swiftlint.yml
├── .env.template
├── .pre-commit-config.yaml
├── scripts/
│   └── pre-push
```

## ⚠️ Problemas comunes

- Si ves errores como **Permission denied** al ejecutar los hooks, ejecuta lo siguiente:

    ```bash
    chmod +x scripts/pre-push
    ```

- **SwiftLint no encuentra el archivo de configuración:**
Asegurate de que .swiftlint.yml esté en la raíz del proyecto.

- **Errores al hacer push:**
El hook de pre-push cancela el push si falla un test o hay errores de lint. Corregilos antes de volver a intentar.

## 🙌 Créditos
Este setup fue diseñado para automatizar al máximo el flujo de trabajo de este proyecto. Pensado especialmente para mantener consistencia, calidad y productividad desde el primer make.

Desarrollado por **Andrés Duque**.
