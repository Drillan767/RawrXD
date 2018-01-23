export default function extractActionName() {
    return document.body.className.split(' ').pop();
}