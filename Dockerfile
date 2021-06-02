from node:alpine
workdir /usr/apps/frontend
copy package.json .
run npm install
copy . .
run npm run build

from nginx
copy --from=0 /usr/apps/frontend/build /usr/share/nginx/html