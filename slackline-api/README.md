# What's Slackin API

_**[OVERVIEW](#overview)**_ | 
_**[GETTING STARTED](#start)**_ | 
_**[ENDPOINT REFERENCE](#endpoint)**_ | 
_**[AUTHORIZATION](#auth)**_ | 
_**[DATA MODEL](#model)**_

<a name="overview"></a>
## Overview

This API provides information about active slacklines to use in the What's Slackin'? App.

### Technologies Used

* Ruby/Rails
* jBuilder
* jwt
* [PostgreSQL](http://www.postgresql.org/docs/)

<a name="start"></a>
## Getting Started

Run `bundle install`

<a name="endpoint"></a>
## Endpoint Reference

Rails Route | HTTP Verb  | Endpoint                                | Access    
:----------:|:----------:|-----------------------------------------|:---------------:
**INDEX**   | `GET`      | `/`                                     | 
**INDEX**   | `GET`      | `/api/users`                           
**CREATE**  | `POST`     | `/api/users`                           
**SHOW**    | `GET`      | `/api/users/:id`                       
**UPDATE**  | `PATCH/PUT`| `/api/users/:id`                       
**DESTROY** | `DELETE`   | `/api/users/:id`                       
**INDEX**   | `GET`      | `/api/users/:user_id/lines`            
**CREATE**  | `POST`     | `/api/users/:user_id/lines`            
**UPDATE**  | `PATCH/PUT`| `/api/lines/:id`                       
**DESTROY** | `DELETE`   | `/api/lines/:id`                       
**INDEX**   | `GET`      | `/api/lines/:line_id/active_lines`
**CREATE**  | `POST`     | `/api/lines/:line_id/active_lines`
**UPDATE**  | `PATCH/PUT`| `/api/active_lines/:id`


<a name="auth"></a>
###Authorization

<a name="model"></a>
###Data Models



---
© 2016 EM DUBB
