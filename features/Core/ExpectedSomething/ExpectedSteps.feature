﻿# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837




Функционал: Автоматизированное получение шагов сценариев на основе действий пользователя

Как Разработчик я хочу
Чтобы у меня был функционал для получения шагов Gherkin который получен на основе интерактивных действий пользователя
Для того чтобы я мог использовать их в своих сценариях без программирования

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	

Сценарий: Я проверяю кнопки с одинаковым заголовком
	Когда я нажмаю на кнопку Vanessa-Behavior "Начать запись поведения"
#Область Создание элементов шапки	
	И     В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
	И     В открытой форме я перехожу к закладке с заголовком "Проверка кнопок"
	И     В открытой форме я нажимаю на кнопку с именем "ЗаполнитьРекСтрока1"
	И     В открытой форме я нажимаю на кнопку с именем "ЗаполнитьРекСтрока2"

	#Область Проверка реквизитов формы
		И     элемент формы с именем "РекСтрока1" стал равен "Значение1"
		И     элемент формы с именем "РекСтрока2" стал равен "Значение2"
	#КонецОбласти	

	
#КонецОбласти

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     я нажмаю на кнопку Vanessa-Behavior "Закончить запись поведения"
	
	
	
	
	
Сценарий: Я получаю дейстия пользователя в виде сценария Gherkin
#Область Подготовка работы сценария
	Когда я удаляю все элементы Справочника "Справочник1"
	Когда я создаю fixtures по макету "Макет"
#КонецОбласти	
	Когда я нажмаю на кнопку Vanessa-Behavior "Начать запись поведения"
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
#Область Создание элементов шапки	
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код       | Наименование       |
		| 000000002 | Тестовый Элемент 2 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
#	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка с именем "Реквизит1" я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с именем "РеквизитЧисло" я ввожу текст "12.34"
	И     В открытой форме в поле с именем "РеквизитСтрока" я ввожу текст "тест"
	И     В открытой форме в поле с именем "РеквизитДата" я ввожу текст "08.04.1981"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	
#КонецОбласти

	
#Область Создание элементов ТЧ
	
	
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст "56,78"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку

	
	
#КонецОбласти

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     я нажмаю на кнопку Vanessa-Behavior "Закончить запись поведения"

	
#Область Проверка работы генератора шагов
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В панели разделов я выбираю "Основная"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1)"'
#	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я открываю выпадающий список "Реквизит1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'из выпадающего списка "Реквизит1" я выбираю "ЗначениеПеречисления1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я выбираю значение реквизита "Реквизит2" из формы списка'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник2"'
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1) *"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я изменяю флаг "Реквизит булево"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в ТЧ "ТабличнаяЧасть1" из выпадающего списка "Реквизит справочник" я выбираю "ТестовыйЭлемент21"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в ТЧ "ТабличнаяЧасть1" я изменяю флаг "Реквизит булево"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита "Реквизит справочник выбор из формы списка" из формы списка'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник2"'
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1) *"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в ТЧ "ТабличнаяЧасть1" из выпадающего списка "Реквизит справочник выбор из формы списка" я выбираю "ТестовыйЭлемент21"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В форме "Тестовый Элемент * (Справочник1) *" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я нажимаю на кнопку "Записать и закрыть"'

#КонецОбласти
	