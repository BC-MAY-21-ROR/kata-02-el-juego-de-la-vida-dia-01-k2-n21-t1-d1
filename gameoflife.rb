grid = [
  [0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0],
  [0, 1, 1, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0]
]
grid2 = [
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0]
]

def dibujar(grid)
  for i in(0..4)
    for j in (0..4)
      if grid[i][j] == 1
        print('*')
      else
        print('.')
      end
    end
    print "\n"
  end
end

def generacion(grid,grid2)
  for i in(1..4-1)
    for j in (1..4-1)
      celulasV = 0
      for a in(-1..1)
        for b in (-1..1)
          celulasV+=grid[i-a][j-b]
        end
      end
      celulasV-=grid[i][j]
      if grid[i][j] == 1 && celulasV < 2
        grid2[i][j] = 0
      elsif grid[i][j] == 1 && celulasV > 3
        grid2[i][j] = 0
      elsif grid[i][j] == 0 && celulasV == 3
        grid2[i][j] = 1
      else
        grid2[i][j] = grid[i][j]
      end
    end
  end
end 

dibujar(grid)
puts
generacion(grid,grid2)
puts
dibujar(grid2)