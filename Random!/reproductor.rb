class Cancion
  attr_accessor :interprete, :nombre, :duracion, :tema, :sig

  def initialize(interprete, nombre, duracion)
    @interprete=interprete
    @nombre=nombre
    @duracion=duracion
  end
end

class Node
  attr_accessor :tema, :sig
  def initialize(tema,sig)
    @tema=tema
    @sig=sig
  end
end

class Menu
  attr_accessor :head, :tail, :actual
  def initialize
    @head=nil
    @tail=nil
    @actual=@head
  end

  def insertar(song)
     if@head==nil
       nuevo=Node.new(song, nil)
       @head=nuevo
       @tail=nuevo
     else
       nuevo=Node.new(song, nil)
       @tail.sig=nuevo
       @tail=nuevo
     end
  end

  def reproducir
    puts @actual.tema.interprete
    puts "----------"
    puts @actual.tema.nombre
    puts "----------"
    puts @actual.tema.duracion
    @actual=@actual.sig
  end

end

mi_cancion=Cancion.new("Luchin", "Cancioncita", "4:20")
mi_cancion2=Cancion.new("Luchan", "cioncita", "3:20")
mi_menu=Menu.new()
mi_menu.insertar(mi_cancion)
mi_menu.insertar(mi_cancion2)
mi_menu.reproducir()
#mi_menu.reproducir_actual()
#mi_menu.reproducir(mi_menu.tail)