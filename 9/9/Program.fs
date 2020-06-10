open System

let rec total (number:uint32) (divider:uint32) (sum:uint32):uint32 = 
   if (number <= divider) then sum
   elif ((number % divider) = 0u) then
        total (number) (divider + 1u) (sum + divider)
   else total number (divider + 1u) sum

let rec friendlyNumbers (counter:uint32) (number:uint32):uint32 = 
   let sumFunction = total number 2u 1u
   if (number = 10000u) then counter
   elif ((number = total sumFunction 2u 1u) && (number <> sumFunction)) then
       friendlyNumbers (counter + 1u) (number + 1u)
   else friendlyNumbers counter (number + 1u)

[<EntryPoint>]
let main argv =
   let answer = ((friendlyNumbers 0u 2u) / 2u)
   System.Console.Write("The number of all pairs of friendly numbers is up to 10000 is ")
   System.Console.WriteLine(answer)
   0