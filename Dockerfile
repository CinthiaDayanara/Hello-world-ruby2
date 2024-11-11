# Usar la imagen base de Ruby
FROM ruby:3.1

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el Gemfile y Gemfile.lock
COPY Gemfile* ./

# Instalar las gemas
RUN bundle install

# Copiar todo el contenido del proyecto
COPY . .

# Exponer el puerto 4567
EXPOSE 4567

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
