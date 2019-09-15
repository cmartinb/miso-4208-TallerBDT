Feature: Register into losestudiantes
    As an user I want to register myself within losestudiantes website in order to rate teachers

Scenario Outline: Login failed with wrong inputs

  Given I go to losestudiantes home register
    When I open the login register
    And I fill with <nombre>, <apellido>, <coreo>, <password>
	And I try to register
    Then I expect to see <error>

    Examples:
      | nombre   | apellido | coreo                 | password  | error            |
      | Cristian   | Martinez   | cmartinezb@gmail.com   | 123       |La contraseña debe ser al menos de 8 caracteres |
      | Cristian   | Martinez   |                       | 123456789 |Ingresa tu correo |
	  | Cristian   | Martinez   | cmartinezb@gmail.com   | 123456789 |Debes aceptar los términos y condiciones |