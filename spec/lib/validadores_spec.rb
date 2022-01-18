require 'rails_helper'
require 'validadores'

RSpec.describe Validadores, type: :lib do
  describe "Validadores" do
    context "data" do
      it "validador data (YYYY-MM-DD)" do
        data = Validadores.data('2019-31-12')

        expect(data).to eq(true)
      end

      it "validador data (YYYY-MM)" do
        data = Validadores.data('2019-12')

        expect(data).to eq(true)
        # skip("escreva testes para esses casos")
      end

      it "validador para data (DD/MM/YYYY)" do
        data = Validadores.data('31/12/2019')

        expect(data).to eq(true)
        # skip("escreva testes para esses casos")
      end
    end

    context "número" do
      it "validador número inteiro" do
        expect(numero).to eq(interger)
        # skip("escreva testes para esses casos")
      end

      it "validador número decimal" do
        numero = Validadores.numero

        expect(numero).to eq(float)
        # skip("escreva testes para esses casos")
      end

      it "validador número percentual" do
        numero = Validadores.numero / 100

        expect(numero).to eq(float)

        # skip("escreva testes para esses casos")
      end
    end

    context "diversos" do
      it "validador e-mail" do
        # skip("escreva testes para esses casos")
      end
    end
  end
end
