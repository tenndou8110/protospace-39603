import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

 //#endregionログイン状態を仮想的に表す変数（true: ログイン中, false: ログインしていない）
 let isLoggedIn = false;

 // ボタンと表示の切り替え
 function toggleUI() {
     const loginBtn = document.getElementById("loginBtn");
     const registerBtn = document.getElementById("registerBtn");
     const logoutBtn = document.getElementById("logoutBtn");
     const newProtoBtn = document.getElementById("newProtoBtn");
     const greeting = document.getElementById("greeting");
 
     if (isLoggedIn) {
         // ログインしている場合の表示
         loginBtn.style.display = "none";
         registerBtn.style.display = "none";
         logoutBtn.style.display = "block";
         newProtoBtn.style.display = "block";
         greeting.textContent = `こんにちは、○○さん`;
     } else {
         // ログインしていない場合の表示
         loginBtn.style.display = "block";
         registerBtn.style.display = "block";
         logoutBtn.style.display = "none";
         newProtoBtn.style.display = "none";
         greeting.textContent = "";
     }
 }
 
 // ページ読み込み時にUIを初期状態に設定
 window.onload = toggleUI;
 
 // ログイン/ログアウトボタンをクリックしたときの処理
 document.getElementById("loginBtn").addEventListener("click", () => {
     isLoggedIn = true;
     toggleUI();
 });
 
 document.getElementById("logoutBtn").addEventListener("click", () => {
     isLoggedIn = false;
     toggleUI();
 });