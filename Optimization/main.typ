#set document(author: "ngntrgduc", 
              title: "Thuật toán tối ưu")
#set text( font: "New Computer Modern", size: 10pt )

// #outline()
// #show outline.entry.where(
//   level: 1
// ): it => {
//   v(12pt, weak: true)
//   strong(it)
// }
// #outline(indent: auto)
// rgb("#04a5e5"): color from catppuccin latte theme
#show strong: set text(rgb("#04a5e5"))
#show emph: it => {
  text(rgb("#04a5e5"), it.body)
}

#set heading(numbering: "1.")
// #set math.equation(numbering: "(1)")

= Linh tinh
== Chuẩn Euclid của vector
$ ||x|| = sqrt(angle.l "x, x" angle.r) = sqrt(sum_(i=1)^n abs(x)^2) $

== Bất đẳng thức Cauchy - Bunjakowski - Schwarz
$ |angle.l x, y angle.r | <= ||x||||y|| $

== Góc giữa 2 vector
$ cos alpha = (angle.l x, y angle.r) / (||x|| ||y||) $

== Tích vô hướng
$ angle.l x, y angle.r = cases(
  x_1 y_1 + ... + x_n y_n,
  ||x|| ||y|| cos(accent("x, y", hat))
) $
Một số tính chất:
$ cases(
  lr(angle.l x, y angle.r) = lr(angle.l y,x angle.r),
  lr(angle.l x+y, z angle.r) = lr(angle.l x,z angle.r) + lr(angle.l y,z angle.r),
  lr(angle.l lambda x,z angle.r) = lambda lr(angle.l x,z angle.r),
  lr(angle.l x,x angle.r) >= 0 "và" lr(angle.l x,x angle.r) = 0 "khi và chỉ khi" x = 0
) $

== Gradient
$ nabla f(x^0) = ((diff f(x^0)) / (diff x_1), 
  (diff f(x^0)) / (diff x_2), ...,  (diff f(x^0)) / (diff x_n))^T $

== Ma trận Hesse
$ nabla^2 f(x^0) = mat(
   (diff^2 f(x^0)) / (diff x_1 diff x_1), ..., (diff^2 f(x^0)) / (diff x_1 diff x_n);
   dots.v, dots.down, dots.v;
   (diff^2 f(x^0)) / (diff x_n diff x_1), ..., (diff^2 f(x^0)) / (diff x_n diff x_n);
) $

== Đoạn thẳng nối 2 điểm
Cho $x^1$, $x^2 in RR$. Đoạn thẳng nối 2 điểm là tập hợp các điểm có dạng
$ x = lambda x^1 + (1-lambda) x^2, #h(5mm) 0 <= lambda <= 1 $ 

== Hàm tuyến tính
$f(x)$ là tuyến tính nếu 
$ f(lambda x + mu y) = lambda f(x) + mu f(y) $
Một hàm tuyến tính xác định trên $RR^n$ luôn có dạng $f(x) = angle.l c, x angle.r$, với $c in RR^n$

== Hàm affine
Hàm affine có dạng
$ f(x) =  angle.l c, x angle.r + alpha, #h(5mm) c in RR^n,alpha in RR $
Nếu $f(x)$ là affine thì 
$forall x, y in RR^n,#h(1mm) forall lambda, mu in RR$ mà $lambda + mu = 1$, ta có
$ f(lambda x + mu y) = lambda f(x) + mu f(y) $

= Giữa kì

== Nêu định nghĩa tập affine, lồi, hàm lồi và các tính chất cơ bản <affine>
    
=== Tập affine
Tập $M in RR^n$ được gọi là tập affine nếu chứa trọn cả *đường thẳng đi qua 2 điểm bất kì* của $M$, tức:
    $ forall x, y in RR^n, lambda in RR => lambda x + (1-lambda)y in M $
Tổ hợp affine:
$ x = sum_(i=1)^k lambda_i x_i, "với" lambda_1, dots,lambda_k in RR, " và" "" sum_(i=1)^k lambda_i = 1 $

=== Tập lồi
Tập $M in RR^n$ được gọi là tập lồi nếu nó chứa trọn *đoạn thẳng nối 2 điểm bất kì* thuộc nó, tức $forall x, y$ và $0 <= lambda <= 1$, ta có 
    $ lambda x + (1-lambda) y in M $

Tổ hợp lồi:
$ x = sum_(i=1)^k lambda_i x_i, "với" lambda_1, dots,lambda_k >= 0, " và" "" sum_(i=1)^k lambda_i = 1 $
Nếu $lambda_i > 0$ thì $x$ là tổ hợp lồi chặt
- Một tập $M$ là lồi khi và chỉ khi nó chứa tất cả các tổ hợp lồi của những phần tử thuộc nó
- Nếu $M$ là tập lồi thì $alpha M$ cũng là tập lồi
- Nếu $M_1, M_2$ lồi thì $M_1 + M_2$ cũng là lồi
#underline("Định lý tách"):
- Định lý tách I: Nếu 2 tập lồi không rỗng và rời nhau thì có 1 siêu phẳng tách chúng
- Định lý tách II: Nếu 2 tập lồi không rỗng và rời nhau và 1 trong 2 tập ấy là compact thì có 1 siêu phẳng tách chúng

=== Hàm lồi
$f$ xác định trên tập lồi $X in RR^n$ được gọi là lồi nếu
$ f(lambda x + (1 - lambda) y ) <= lambda f(x) + (1-lambda)f(y), #h(5mm) forall x,y in X, #h(2mm) lambda in [0, 1] $

Hàm $f$ được gọi là lõm nếu $-f$ là lồi. Ta nói $f$ là lồi chặt nếu
$ f(lambda x + (1 - lambda) y ) < lambda f(x) + (1-lambda)f(y), #h(5mm) forall x,y in X, #h(2mm) lambda in [0, 1] $

- Miền xác định hữu hiệu của hàm lồi $f$ là
$ "dom"f = {x in X | f(x) < infinity} $
- Trên đồ thị của hàm lồi $f$ là tập
$ "epi"f = {(x,psi) in X times RR | f(x) <= psi } $
- $f$ lồi $<=>$ $"epi"f$ là tập lồi
- Nếu $f$ lồi thì tập mức dưới $L_alpha f = {x in X | f(x) <= alpha}$ là tập lồi, $forall alpha in RR$ 
- Nếu $f_1$ lồi trên $X_1$, $f_2$ lồi trên $X_2$ và $lambda, mu > 0$ thì các hàm $lambda f_1 + mu f_2$, $max{f_1, f_2}$ lồi trên $X_1 sect X_2$
- Nếu $f$ là hàm lồi xác định trên tập lồi mở $X subset.eq RR^n$ thì $f$ liên tục trên $X$
- $ f'(x^0, d) <= f(x^0 + d) - f(x^0) $
- Cho $f$ là hàm khả vi trên tập lồi mở $X subset.eq RR^n$. Khi đó, $f$ là hàm lồi trên $X$ khi và chỉ khi
  $ f(y) - f(x) >= angle.l nabla f(x), y - x angle.r, space forall x, y in X $
- Nếu $f$ là hàm khả vi 2 lần trên tập lồi mở $X in RR^n$, khi đó:
  - Hàm $f$ lồi trên $X$ khi và chỉ khi ma trận Hesse $nabla^2 f(x)$ là *nửa xác định dương* trên $X$, tức là $forall x in X$
  $ y^T nabla^2 f(x) y >= 0, #h(5mm) forall y in RR^n $ 
  lồi chặt thì ma trận Hesse *xác định dương* và $ y^T nabla^2 f(x) y > 0, #h(5mm) forall y in RR^n $  
  lõm thì ngược lại ($<=, <$)
- Giả sử $f$ là hàm lồi khả vi trên $RR^n$. Khi đó $x^* in RR^n$ là nghiệm cực tiểu toàn cục của bài toán khi và chỉ khi $ nabla  f(x^*) = 0 $

== Với dữ liệu đã cho, phát biểu mô hình bài toán tối ưu
Bài toán tối ưu tổng quát được phát biểu như sau:
$ min f(x),#h(2mm) "v.đ.k" x in D $
Trong đó $D subset.eq RR^n$ được gọi là tập nghiệm chấp nhận được hay tập ràng buộc và $f: D arrow RR$ là hàm mục tiêu
    
== Phát biểu điều kiện cần và điều kiện đủ của sự tồn tại điểm cực tiểu của bài toán khả vi không ràng buộc

=== Điều kiện cần (Điều kiện bậc nhất)
Cho hàm $f$ xác định, khả vi trên $RR^n$. Nếu $x^* in RR^n$ là nghiệm cực tiểu địa phương của bài toán $(P^"krb")$ thì $nabla f(x^*) = 0$. 

Điểm $x^* in RR^n$ thoả $nabla f(x^*) = 0$ được gọi là *điểm dừng* của hàm $f$. 

=== Điều kiện đủ (Điều kiện bậc hai)
Giả sử hàm $f$ khả vi liên tục 2 lần trên $RR^n$. Khi đó:
- Nếu $x^* in RR^n$ là *điểm cực tiểu địa phương* của $f$ trên $RR^n$ thì
$ cases(
  nabla f(x^*) = 0 "và",
  nabla^2 f(x^*) "nửa xác định dương"
) $
- Ngược lại, nếu 
$ cases(
  nabla f(x^*) = 0 "và",
  nabla^2 f(x^*) "xác định dương"
) $
thì $x^*$ là *điểm cực tiểu địa phương chặt* của $f$ trên $RR^n$

#pagebreak()

== Trình bày thuật toán gradient với thủ tục tìm chính xác theo tia và thuật toán gradient với thủ tục quay lui  <gradient>
=== Thuật toán gradient với thủ tục tìm chính xác theo tia
Trong thuật toán này, tại mỗi bước lặp $k$, điểm lặp tiếp theo được xác định bởi
$ x^(k+1) = x^k - t_k nabla f(x^k) $
trong đó $t_k$ là nghiệm cực tiểu của hàm một biến $phi_(k)(t) = f(x^k - t nabla f(x^k))$ với $t > 0$
- Bước khởi đầu: chọn $epsilon > 0$ đủ nhỏ, xuất phát từ 1 điểm $x^0 in RR^n$ tuỳ ý có $nabla f(x^0) != 0$, đặt $k:=0$
- Bước lặp $k (k=0,1,2,...)$:
  - $(k_1)$: Tính $x^(k+1) = x^k - t_k nabla f(x^k)$, với $t_k = "argmin" {phi_k (x), space t > 0}$
  - $(k_2)$: Tính $nabla f(x^(k+1))$
  - $(k_3)$: *If* $ ||nabla f(x^(k+1))|| < epsilon$  \
              #h(8mm) *Then* Dừng thuật toán (lấy điểm dừng $x^* approx x^(k+1)$) \
              #h(8mm) *Else* $k:=k+1$ và quay lại Bước lặp $k$
#linebreak()
Nếu hàm mục tiêu của bài toán là hàm toàn phương lồi chặt
$ f(x) = 1/2 x^T A x - b^T x + c $
thì ta có công thức tính độ dài bước chính xác $t_k$ tại mỗi Bước lặp $k$ là 
$ t_k = ((A x^k - b)^T nabla f(x^k))/((nabla f(x^k))^T A nabla f(x^k)) > 0 $
              
=== Thuật toán gradient với thủ tục quay lui
Trong thuật toán này, tại mỗi bước lặp $k$, chọn hướng giảm $d^k = - nabla f(x^k)$ và độ dài bước $t_k$ được xác định theo thủ tục quay lui
- Bước khởi đầu: chọn tuỳ ý $m_1 in (0,1) "và" alpha in (0,1)$, chọn $epsilon >0$ đủ nhỏ, xuất phát từ 1 điểm $x^0 in RR^n$ tuỳ ý có $nabla f(x^0) != 0$, đặt $k:=0$
- Bước lặp $k (k=0,1,2,...)$:
  - $(k_1)$: Đặt $t_k = 1$
  - $(k_2)$: Tính $x^(k+1) = x^k - t_k nabla f(x^k)$ và $f(x^(k+1))$
  - $(k_3)$: *If* $f(x^(k+1)) - f(x^k) <= m_1 t_k angle.l nabla f(x^k), -nabla f(x^k) angle.r = - m_1 t_k ||nabla f(x^k)||^2$  \
              #h(8mm) *Then* Chuyển Bước $k_4$ \
              #h(8mm) *Else* $t_k:=alpha t_k$ và quay về Bước $k_2$
  - $(k_4)$: Tính $nabla f(x^(k+1))$
  - $(k_5)$: *If* $||nabla f(x^(k+1))|| < epsilon$  \
              #h(8mm) *Then* Dừng thuật toán (lấy điểm dừng $x^* approx x^(k+1)$) \
              #h(8mm) *Else* $k:=k+1$ và quay lại Bước lặp $k$
#pagebreak()

= Cuối kì
== Nêu định nghĩa tập affine, lồi, hàm lồi và các tính chất cơ bản (@affine)
== Thuật toán gradient với thủ tục tìm chính xác theo tia và thuật toán gradient với thủ tục quay lui (@gradient)
== Phương pháp Newton cổ điển giải hệ phương trình phi tuyến
=== Trường hợp $n = 1$
Xét phương trình 1 biến số $ f(x) = 0 $
Giả sử nghiệm của phương trình này là $x^* in RR$. Xuất phát từ điểm $x^0$ đủ gần $x^*$ và sinh ra $1$ dãy nghiệm xấp sỉ $x^0, x^1, x^2, dots$ hội tụ đến $x^*$

Đặt 
$ x^(k+1) = x^k - (f(x^k))/(f'(x^k)) $
Gán $k:= k+1$ và lặp lại quá trình tính toán đối với điểm $x^k$ mới
- *Giả sử hàm $f$ khả vi liên tục cấp 2*  
- *$x^*$ là nghiệm của phương trình $f(x) = 0$, tức $f(x^*) = 0$*
- *$f'(x^k) != 0$*
- *Điểm xuất phát ban đầu $x^0$ phải gần phải đủ gần nghiệm $x^*$ của hệ*. Nếu không, thuật toán có thể không hội tụ

=== Trường hợp $n > 1$
Ma trận Jacobi của $F$ tại $x$:
$ D F(x)  = mat(
   (diff f_1) / (diff x_1), ..., (diff f_1) / (diff x_n );
   dots.v, dots.down, dots.v;
   (diff f_m) / (diff x_1), ..., (diff f_m) / (diff x_n);
) $
Dòng thứ $i$ của ma trận Jacobi chính là $[nabla f_i (x)]^T$

Xét hệ phương trình $n$ ẩn, $n$ phương trình $ F(x) = 0 $
trong đó $F(x) = (f_1 (x), f_2 (x), dots, f_n (x))^T$ là hàm vector

Giả sử nghiệm của phương trình này là $x^* in RR$. Xuất phát từ điểm $x^0$ đủ gần $x^*$ và sinh ra $1$ dãy nghiệm xấp sỉ $x^0, x^1, x^2, dots$ hội tụ đến $x^*$


Bước lặp:
$ x^(k+1) = x^k - [D F(x^k)]^(-1)F(x^k) $
Đặt $x^k = x^(k+1)$ và lặp lại quá trình tính toán đối với điểm $x^k$ mới

- *Điểm xuất phát ban đầu $x^0$ phải gần phải đủ gần nghiệm $x^*$ của hệ*
- *Ma trận Jacobi $ D F(x^k)$ không suy biến tại mọi bước lặp $k$*. Nếu không, thuật toán sẽ không thực hiện được

#pagebreak()
== Thuật toán Newton thuần tuý giải bài toán tối ưu không ràng buộc
- Bước khởi đầu: chọn $epsilon > 0$ đủ nhỏ, xuất phát từ 1 điểm $x^0 in RR^n$ tuỳ ý đủ gần điểm dừng $x^*$ và $nabla f(x^0) != 0$, đặt $k:=0$
- Bước lặp $k (k=0,1,2,...)$:
  - $(k_1)$: Tính hướng Newton $p^k$ của $f$ tại $x^k$ bằng việc giải hệ phương trình tuyến tính $ [nabla^2 f(x^k)]p^k = -nabla f(x^k) $
  - $(k_2)$: Xác định $x^(k+1) := x^k + p^k$ và $nabla f(x^(k+1))$
  - $(k_3)$: *If* $ ||nabla f(x^(k+1))|| < epsilon$  \
              #h(8mm) *Then* Dừng thuật toán (lấy điểm dừng $x^* approx x^(k+1)$) \
              #h(8mm) *Else* $k:=k+1$ và quay lại Bước lặp $k$

== Thuật toán chia đôi
- Bước khởi đầu: lấy $epsilon >0$ đủ nhỏ, đặt $a^1 := a, space b^1 := b, space k := 1$
- Bước lặp $k (k=1,2,...)$:
  - $(k_1)$: Đặt $c := (a^k + b^k)/2$, $x^k = c - epsilon/2$, $y^k = c + epsilon/2$ (có $a^k < x^k < y^k < b^k$)
  - $(k_2)$: Tính $z_1 = f(x^k)$, $z_2 = f(y^k)$ 
  - $(k_3)$: *If* $z_1 <= z_2$  \
              #h(8mm) *Then* Chuyển Bước $k_4$ \
              #h(8mm) *Else* Chuyển Bước $k_5$
  - $(k_4)$: (Có $x^* in [a^k, y^k]$) \
              #h(8mm) *If* $y^k - a^k <= epsilon$ \
              #h(8mm) *Then* Dừng thuật toán (lấy $x^* := x^k$ và $f_* := z_1$, ở đây $f_*$ là giá trị tối ưu) \
              #h(8mm) *Else* Đặt $a^(k+1) = a^k$, $b^(k+1) = y^k$, $k:=k+1$, chuyển về Bước lặp $k$
  - $(k_5)$: (Có $x^* in [x^k, b^k]$) \
              #h(8mm) *If* $b^k - x^k <= epsilon$ \
              #h(8mm) *Then* Dừng thuật toán (lấy $x^* := y^k$ và $f_* := z_2$) \
              #h(8mm) *Else* Đặt $a^(k+1) = x^k$, $b^(k+1) = b^k$, $k:=k+1$, chuyển về Bước lặp $k$

== Thuật toán lát cắt vàng
- Bước khởi đầu: lấy $epsilon >0$ đủ nhỏ, đặt $a^1 := a, space b^1 := b, space k := 1 "và" alpha = (sqrt(5) - 1)/2$
- Bước lặp $k (k=1,2,...)$:
  - $(k_1)$: Chia $[a^k, b^k]$ bởi các điểm chia $x^k := a^k + (1-alpha)(b^k - a^k)$, $y^k := a^k + alpha(b^k - a^k)$
  - $(k_2)$: Tính $z_1 = f(x^k)$, $z_2 = f(y^k)$ 
  - $(k_3)$: *If* $z_1 <= z_2$  \
              #h(8mm) *Then* Chuyển Bước $k_4$ \
              #h(8mm) *Else* Chuyển Bước $k_5$
  - $(k_4)$: (Có $x^* in [a^k, y^k]$) \
              #h(8mm) *If* $y^k - a^k <= epsilon$ \
              #h(8mm) *Then* Dừng thuật toán (lấy $x^* := x^k$ và $f_* := z_1$) \
              #h(8mm) *Else* Đặt $a^(k+1) = a^k$, $b^(k+1) = y^k$, $k:=k+1$, chuyển về Bước lặp $k$
  - $(k_5)$: (Có $x^* in [x^k, b^k]$) \
              #h(8mm) *If* $b^k - x^k <= epsilon$ \
              #h(8mm) *Then* Dừng thuật toán (lấy $x^* := y^k$ và $f_* := z_2$) \
              #h(8mm) *Else* Đặt $a^(k+1) = x^k$, $b^(k+1) = b^k$, $k:=k+1$, chuyển về Bước lặp $k$

