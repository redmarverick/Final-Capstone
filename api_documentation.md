<div class="markdown prose w-full break-words dark:prose-invert light">
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
      <li><strong>Method</strong>: <code>DELETE</code></li>
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
   </div>

<div class="markdown prose w-full break-words dark:prose-invert light"><p>Certainly! Here's an updated version of your API documentation that includes information about viewing data for a specific car:</p><hr><h2>Cars API</h2><p>This API allows you to manage cars in the system, including listing all cars, viewing data for a specific car, creating new cars, and deleting existing cars.</p><h3>List All Cars</h3><h4>Endpoint</h4><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">GET /api/cars
</code></div></div></pre><h4>Description</h4><p>This endpoint retrieves a list of all cars in the system.</p><h4>Response</h4><ul><li><strong>Status Code</strong>: 200 OK<ul><li>Returns a JSON array of car objects.</li></ul></li></ul><h4>Example</h4><h5>Request</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-http">GET /api/cars
</code></div></div></pre><h5>Response</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">[</span>
  <span class="hljs-punctuation">{</span>
    <span class="hljs-attr">"id"</span><span class="hljs-punctuation">:</span> <span class="hljs-number">1</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"name"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Name 1"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"description"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Description 1"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"photo"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Photo URL 1"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"reserved"</span><span class="hljs-punctuation">:</span> <span class="hljs-literal"><span class="hljs-keyword">false</span></span>
  <span class="hljs-punctuation">}</span><span class="hljs-punctuation">,</span>
  <span class="hljs-punctuation">{</span>
    <span class="hljs-attr">"id"</span><span class="hljs-punctuation">:</span> <span class="hljs-number">2</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"name"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Name 2"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"description"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Description 2"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"photo"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Photo URL 2"</span><span class="hljs-punctuation">,</span>
    <span class="hljs-attr">"reserved"</span><span class="hljs-punctuation">:</span> <span class="hljs-literal"><span class="hljs-keyword">true</span></span>
  <span class="hljs-punctuation">}</span>
<span class="hljs-punctuation">]</span>
</code></div></div></pre><h3>View Data for a Specific Car</h3><h4>Endpoint</h4><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">GET /api/cars/:<span class="hljs-built_in">id</span>
</code></div></div></pre><h4>Description</h4><p>This endpoint allows you to view detailed data for a specific car in the system.</p><h4>Parameters</h4><ul><li><code>:id</code> (integer, required) - The unique identifier of the car to be viewed.</li></ul><h4>Response</h4><ul><li><strong>Status Code</strong>: 200 OK<ul><li>Returns a JSON object with details of the car.</li></ul></li></ul><h4>Example</h4><h5>Request</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-http">GET /api/cars/1
</code></div></div></pre><h5>Response</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
  <span class="hljs-attr">"id"</span><span class="hljs-punctuation">:</span> <span class="hljs-number">1</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"name"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Name 1"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"description"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Description 1"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"photo"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car Photo URL 1"</span><span class="hljs-punctuation">,</span>
  <span class="hljs-attr">"reserved"</span><span class="hljs-punctuation">:</span> <span class="hljs-literal"><span class="hljs-keyword">false</span></span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre><h3>Create a New Car</h3><h4>Endpoint</h4><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">POST /api/cars
</code></div></div></pre><h4>Description</h4><p>This endpoint allows you to create a new car in the system.</p><h4>Request Body</h4><ul><li><code>name</code> (string, required) - The name of the car.</li><li><code>description</code> (string, required) - A description of the car.</li><li><code>photo</code> (string, optional) - URL of a photo of the car.</li><li><code>reserved</code> (boolean, required) - Indicates whether the car is reserved.</li></ul><h4>Request Headers</h4><ul><li><code>Content-Type: application/json</code> (required) - Indicates the type of data in the request body.</li></ul><h4>Response</h4><ul><li><strong>Status Code</strong>: 201 Created<ul><li>Returns a JSON object with a success message.</li></ul></li></ul><h4>Example</h4><h5>Request</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-http">POST /api/cars
Content-Type: application/json

{
"name": "New Car",
"description": "A brand new car",
"photo": "https://example.com/car.jpg",
"reserved": false
}
</code></div></div></pre><h5>Response</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-json"><span class="hljs-punctuation">{</span>
<span class="hljs-attr">"message"</span><span class="hljs-punctuation">:</span> <span class="hljs-string">"Car created successfully"</span>
<span class="hljs-punctuation">}</span>
</code></div></div></pre><h3>Delete a Car</h3><h4>Endpoint</h4><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">DELETE /api/cars/:<span class="hljs-built_in">id</span>
</code></div></div></pre><h4>Description</h4><p>This endpoint allows you to delete a car from the system.</p><h4>Parameters</h4><ul><li><code>:id</code> (integer, required) - The unique identifier of the car to be deleted.</li></ul><h4>Response</h4><ul><li><strong>Status Code</strong>: 204 No Content<ul><li>The car was successfully deleted.</li></ul></li></ul><h4>Error Responses</h4><ul><li><p><strong>Status Code</strong>: 404 Not Found</p><ul><li>If the car with the specified <code>:id</code> does not exist.</li></ul></li><li><p><strong>Status Code</strong>: 422 Unprocessable Entity</p><ul><li>If there was an issue with the request parameters.</li></ul></li></ul><h4>Example</h4><h5>Request</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-http">DELETE /api/cars/1
</code></div></div></pre><h5>Response</h5><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-http">message: 'Car deleted successfully'
</code></div></div></pre><h3>Notes</h3><ul><li>Authentication and authorization may be required to access certain endpoints depending on your application's security configuration.</li></ul><hr><p>This documentation text provides information on how to view data for a specific car along with other car management operations in your API. You can use this documentation as a reference or incorporate it into your API documentation as needed.</p></div>