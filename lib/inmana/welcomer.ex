defmodule Inmana.Welcomer do
  # Receber um nome e idade
  # Se o usuário se chamar banana e tiver 42, recebe uma mensagem especial
  # Se o usuário for maior de idade ele recebe uma mensagem normal
  # Se for menor de idade, retornamos um erro
  # Temos que tratar o nome do usuário para entradas erradas como BaNaNa,

  def  welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "You are very special, banana"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}!"}
  end

  defp evaluate(name, _age) do
    {:error,"You shall not pass!"}
  end
end
