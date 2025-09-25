cd DragonBones
npm install && npm run build && npm run build-pixi

cd ../Pixi/8.x
npm install && npm run build

cd ../../
npm install
mkdir -p public && cp -R node_modules/pixi.js/ public/