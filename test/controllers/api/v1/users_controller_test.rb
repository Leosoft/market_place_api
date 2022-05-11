require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest

  # En este primer Test se revisa la creacion de usuario enviando una peticion POST valida
  # Entonces se revisa se revisa que un usuario adicional se encuentra en la base de datos
  # El codigo de respuesta debe ser created (codigo de estado 201)
  test "Should create user" do
    assert_difference('User.count') do
      post api_v1_user_url, params: {user: {email:
                                              'test@test.org',password: '123456'}}, as: :json
    end
    assert_response :created
  end


  # En este segundo test se revisa que el usuario no sea creado usando un email que ya se encuentra en uso
  # Entonces se revisa que el codigo http de respuesta sea unprocessable_entity (cod 422)

  test "Should not create user with taken email" do
    assert_no_difference('User.count') do
      post api_v1_user_url, params: {user: {email:
                                            @user.email, password: '123456'}}, as: :json
    end
    assert_response :unprocessable_entity
  end
end
