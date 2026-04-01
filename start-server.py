import http.server
import socketserver
import webbrowser
import os

PORT = 8080
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

if __name__ == "__main__":
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        url = f"http://localhost:{PORT}"
        print(f"""
╔════════════════════════════════════════════╗
║       打工搞钱神器 - 本地服务器已启动        ║
╠════════════════════════════════════════════╣
║  访问地址: {url}
║  按 Ctrl+C 停止服务器                       ║
╚════════════════════════════════════════════╝
        """)
        webbrowser.open(url)
        httpd.serve_forever()
