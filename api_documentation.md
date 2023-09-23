<div class="markdown prose w-full break-words dark:prose-invert light">
   <p>Creating comprehensive API documentation typically involves several steps and tools. While I can provide you with a basic template for documenting your API endpoints, it's important to note that creating extensive and well-organized documentation often requires specialized tools like Swagger, Postman, or dedicated API documentation platforms like Apiary, OpenAPI, or Swagger UI.</p>
   <p>Here's a basic template for documenting your API endpoints:</p>
   <h1>API Documentation</h1>
   <h2>Introduction</h2>
   <p>This documentation provides information about the endpoints and functionality of our API.</p>
   <h3>Base URL</h3>
   <p>The base URL for all API endpoints is: <code>https://localhost:3000/api</code></p>
   <h2>Authentication</h2>
   <p>Our API uses token-based authentication for most endpoints. You need to include the authentication token in the header of your HTTP requests. To obtain an authentication token, please refer to the <a href="#authentication" target="_new">Authentication</a> section.</p>
   <h2>Endpoints</h2>
   <h3>Users</h3>
   <h4>Register a User</h4>
   <ul>
      <li><strong>Endpoint</strong>: <code>/api/register</code></li>
      <li><strong>Method</strong>: <code>POST</code></li>
      <li><strong>Description</strong>: Register a new user.</li>
      <li>
         <strong>Parameters</strong>:
         <ul>
            <li><code>name</code> (string, required): The name of the user.</li>
            <li><code>email</code> (string, required): The email address of the user.</li>
            <li><code>password</code> (string, required): The user's password.</li>
            <li><code>password_confirmation</code> (string, required): Confirmation of the user's password.</li>
         </ul>
      </li>
      <li>
         <strong>Request Example</strong>:
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"name"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"username"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"email"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"example@example.com"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"password"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"mypassword"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"password_confirmation"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"mypassword"</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
      <li>
         <strong>Response Example</strong> (Success):
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"message":"User created successfully."</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
      <li>
         <strong>Response Example</strong> (Error):
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"errors":["Email has already been taken"]</span><span class="hljs-punctuation"></span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
   </ul>
   <h4>User Login</h4>
   <ul>
      <li><strong>Endpoint</strong>: <code>/api/login</code></li>
      <li><strong>Method</strong>: <code>POST</code></li>
      <li><strong>Description</strong>: Log in a user and obtain an authentication token.</li>
      <li>
         <strong>Parameters</strong>:
         <ul>
            <li><code>email</code> (string, required): The email address of the user.</li>
            <li><code>password</code> (string, required): The user's password.</li>
         </ul>
      </li>
      <li>
         <strong>Request Example</strong>:
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"email"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"example@example.com"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"password"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"mypassword"</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
      <li>
         <strong>Response Example</strong> (Success):
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">message: 'Logged in successfully.'</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
      <li>
         <strong>Response Example</strong> (Error):
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"error"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Invalid credentials."</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
   </ul>

<h4>User Logout</h4>
   <ul>
      <li><strong>Endpoint</strong>: <code>/api/logout</code></li>
      <li><strong>Method</strong>: <code>POST</code></li>
      <li><strong>Description</strong>: Log out current user and destroy the authentication token.</li>
      <li>
         <strong>Parameters</strong>:
         <ul>
            <li>No parameters required</li>
         </ul>
      </li>
      <li>
         <strong>Response Example</strong> (Success):
         <pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">message: 'Logged out successfully.'</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre>
      </li>
   </ul>

   <h3>Other Endpoints</h3>
   <p>Document other endpoints in a similar format, including details about the endpoint, request parameters, and response examples.</p>
   <h2>Authentication</h2>
   <p>Our API uses token-based authentication. To obtain an authentication token, send a POST request to the <code>/api/login</code> endpoint with your email and password.</p>
   <h2>Error Handling</h2>
   <p>Our API returns appropriate HTTP status codes and JSON response bodies for errors. Common error responses include:</p>
   <ul>
      <li><code>400 Bad Request</code>: Invalid request parameters or validation errors.</li>
      <li><code>401 Unauthorized</code>: Authentication failure.</li>
      <li><code>404 Not Found</code>: Resource not found.</li>
      <li><code>500 Internal Server Error</code>: Server-side errors.</li>
   </ul>
   <h2>Rate Limiting</h2>
   <p>Our API has rate limiting in place to prevent abuse. The rate limit for each endpoint is X requests per minute.</p>
   <h2>Response Format</h2>
   <p>All responses are in JSON format.</p>
   <h2>Conclusion</h2>
   <p>Please refer to this documentation for information on using our API effectively. If you have any questions or encounter issues, contact our support team at <a href="mailto:support@your-company.com" target="_new">support@your-company.com</a>.</p>
   <hr>
   <p>This template provides a basic structure for documenting your API endpoints. You can expand on this template and use specialized tools and platforms to create more interactive and detailed documentation.</p>
</div>