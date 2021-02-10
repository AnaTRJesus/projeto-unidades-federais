defmodule UnidadesFederativas do

    defdelegate create_estado(params), to: UnidadesFederativas.Estado.Create, as: :call
    defdelegate delete_estado(params), to: UnidadesFederativas.Estado.Delete, as: :call
    defdelegate show_estado_all(), to: UnidadesFederativas.Estado.Get, as: :callAll
    defdelegate show_estado(params), to: UnidadesFederativas.Estado.Get, as: :call
    defdelegate update_estado(params), to: UnidadesFederativas.Estado.Update, as: :call

    defdelegate create_municipio(params), to: UnidadesFederativas.Municipio.Create, as: :call
    defdelegate delete_municipio(params), to: UnidadesFederativas.Municipio.Delete, as: :call
    defdelegate show_municipio_all(), to: UnidadesFederativas.Municipio.Get, as: :callAll
    defdelegate show_municipio(params), to: UnidadesFederativas.Municipio.Get, as: :call
    defdelegate update_municipio(params), to: UnidadesFederativas.Municipio.Update, as: :call


end
