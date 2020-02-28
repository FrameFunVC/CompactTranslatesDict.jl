module InfiniteVectorsCompat

using InfiniteVectors: Integers, InfiniteVector
import Base: string

string(::Integers) = "𝐙"
string(v::InfiniteVector) = (io=IOBuffer();Base.show_vector(io, v);String(take!(io)))
end
