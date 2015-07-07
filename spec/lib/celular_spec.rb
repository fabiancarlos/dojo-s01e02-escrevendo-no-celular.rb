# encoding: UTF-8
require "spec_helper"
require "celular"

describe "Celular" do

	it "A single word is converted to numbers" do
		@celular = Celular.new('234')

    expect(@celular.write_on_cellphone).to eq('ADG')
	end

	it "A single spaced word is converted to numbers" do
		@celular = Celular.new('23402')

    expect(@celular.write_on_cellphone).to eq('ADG A')
	end

	it "A single paused word is converted to numbers" do
		@celular = Celular.new('2_2_2')

    expect(@celular.write_on_cellphone).to eq('AAA')
	end

  it "Escreve um texto" do
  	@celular = Celular.new('77773367_7773302_222337777_777766606660366656667889999_9999555337777')

    expect(@celular.write_on_cellphone).to eq('SEMPRE ACESSO O DOJOPUZZLES')
  end
end