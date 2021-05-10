tamLista :: [Int] -> Int
tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs

-- Passo a lista + o numero a ser inserido como parametro, mando adicionar o numero a ser inserido nela e retorno essa lista atualizada.
push :: [Int] -> Int -> [Int]
push pilha x = pilha ++ [x] -- inserindo no final, pois sempre inserimos no topo.


--Se sobrar só um elemento na lista, retorno ele. Caso contrário, chamo topo e passo a lista sem a cabeça como parametro para continuar a iteração.
topo :: [Int] -> Int
topo [x] = x -- Se sobrar só 1 elemento, quer dizer que é o elemento do topo.
topo (x:xs) = topo xs -- se não, só chamar topo e passar como parametro a cauda da lista.

-- Funciona, mas não consegui implementar dentro de outras funções para reutiliza-la.
isEmpty :: [Int] -> Bool
isEmpty [] = True -- Se a lista estiver vazia, retorno true.
isEmpty _ = False -- Qualquer outro caso, retorno false.


-- Se a lista estiver vazia, retorno uma mensagem dizendo que ela está vazia. Caso contrário, se a lista tiver só 1 elemento, eu retorno uma lista vazia, se tiver mais de 1 elemento, eu itero na lista até chegar no ultimo elemento, removo ele e retorno a lista sem o elemento do topo.
pop :: [Int] -> [Int]
pop [] = error "A pilha esta vazia!"
pop [x] = []
pop (x:xs) = x : pop xs -- lista x recebe a lista sem a calda.

inverter :: [Int] -> [Int]
inverter [] = []
inverter (x:xs) = (inverter xs) ++ [x]

superPop :: [Int] -> Int -> [Int]
superPop [] _ = error "A pilha esta vazia!"
superPop (x:xs) a = x : drop a (x:xs)

main::IO()

main = do

  let w = [10,20,30]
  let x = inverter w
  let y = superPop x 2
  let z = inverter y
  show z