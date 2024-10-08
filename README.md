# Тестовое задание - Страница с красивыми номерами

## Описание проекта

Это тестовое задание включает разработку фронтенд-интерфейса для поиска и фильтрации списка "красивых" телефонных номеров. После развертывания Docker-среды у вас будет готовый бэкенд и базовая настройка фронтенда. Ваша задача — сверстать страницу, реализовать мобильную адаптацию, загрузку номеров и фильтрацию.

## Основные задачи

### 1. Верстка страницы

- Сверстать страницу на основе Figma [макета](https://www.figma.com/design/wdrDPrqmUp](https://www.figma.com/design/wdrDPrqmUp0AO6VO2WPVW7/%D0%A2%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%BE%D0%B5?node-id=0-1&node-type=canvas))
- Необходимо реализовать адаптивный дизайн для мобильных и десктопных устройств.

### 2. Фильтры

- Добавить фильтры, которые отображаются в левой части экрана на десктопе и в виде отдельной панели/страницы на мобильных устройствах.
- Реализовать следующие фильтры:
  - **Свободный поиск**: поле для ввода части номера телефона.
  - **Категории номеров**: Простые, Бронзовые, Серебряные, Золотые, Платиновые, VIP.
  - **Операторы связи**: с выбором логотипов операторов.
  - **Регион**: выбор региона.
  - **Стоимость тарифа**: диапазон стоимости тарифа (минимальная и максимальная цена).
- Кнопку очистки фильтров

### 3. Список номеров

- Реализовать загрузку номеров с сервера по маршруту: `POST /numbers/page/{номер страницы}`.
  - В теле запроса можно передавать параметры фильтров:
    - `free_search` (string) — свободный поиск по номеру.
    - `categories` (array[int]) — ID категорий номеров (можно узнать из верстки по умолчанию, аттрибут data-id).
    - `operators` (array[int]) — ID операторов связи (можно узнать из верстки по умолчанию, аттрибут data-id).
    - `region` (int) — ID региона.
    - `min_price` (int) — минимальная цена тарифа.
    - `max_price` (int) — максимальная цена тарифа.
  - Каждая страница содержит 150 номеров.
- Для каждого номера в списке отображать:
  - Сам номер.
  - Стоимость тарифа.
  - Оператора связи (логотип).
  - Регион.
- Реализовать кнопку "Загрузить ещё" для подгрузки номеров без перезагрузки страницы.

### 4. Мобильная версия

- Реализовать мобильную версию с адаптацией всех элементов интерфейса под малые экраны.
- Фильтры на мобильных устройствах должны открываться как отдельная панель/страница.
- Убедиться, что верстка сохраняет свою функциональность и удобство использования на мобильных устройствах.

### 5. Что не нужно реализовывать

1. Функционал меню.
2. Сортировку номеров.
3. Функционал карусели фильтров на мобильных устройствах (только верстка).

## Требования

- Использовать **БЭМ-методологию** для верстки.
- Применить **SCSS** для стилизации, используя компонентный подход.
- Построить проект с правильной **ООП-структурой**.
- Разметка страницы должна быть реализована в файле `backend/templates/pages/numbers.twig`. Необходимые данные для шаблона передаются автоматически, вам нужно только реализовать логику и верстку интерфейса.

## Инструкция по развертыванию проекта

### 1. Развертывание Docker

1. Убедитесь, что Docker установлен на вашем компьютере.
2. Запустите Docker, чтобы развернуть окружение.

### 2. Сборка проекта через Webpack

1. Перейдите в папку `frontend`.
2. Выполните команды `npm i` для установки зависимостей и `npm run watch` для сборки проекта с помощью **Webpack**.

### 3. Запуск проекта

После успешной сборки проекта, откройте браузер и перейдите по адресу `http://localhost:8080/`, чтобы убедиться, что всё работает корректно.

## Дополнительно

- При возникновении вопросов вы можете написать мне в [телеграм](https://t.me/molodoydurov)
