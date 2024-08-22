"use client";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { cookies } from "next/headers";

export default function Login() {
  const router = useRouter();
  const cookieStore = cookies();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  async function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();

    try {
      const response = await fetch("/api/auth/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ username, password }),
      });

      const data = await response.json();

      if (response.ok) {
        // Set cookie and redirect
        cookieStore.set("logger", data.success);
        router.push("/");
      } else {
        console.error(data.error);
      }
    } catch (error) {
      console.error("An error occurred:", error);
    }
  }

  return (
    <section className="container">
      <form onSubmit={handleSubmit} className="form-register">
        <input
          onChange={(e) => setUsername(e.target.value)}
          type="text"
          placeholder="Username"
          value={username}
        />
        <input
          onChange={(e) => setPassword(e.target.value)}
          type="password"
          placeholder="Password"
          value={password}
        />
        <button type="submit">Login</button>
      </form>
      <Card pair={pair} />
    </section>
  );
}
