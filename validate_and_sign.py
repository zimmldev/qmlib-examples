import requests
import sys

# Server endpoint for validating build time
LICENSE_SERVER_VALIDATE_BUILD_TIME_URL = "https://qmlib-license-server-215610585923.europe-west1.run.app/validate_build_time"

def get_signature_from_server(license_key: str, build_time: str) -> str:
    payload = {
        "license_key": license_key,
        "build_time": build_time
    }
    headers = {
        "Content-Type": "application/json"
    }

    try:
        response = requests.post(LICENSE_SERVER_VALIDATE_BUILD_TIME_URL, json=payload, headers=headers)
        if response.status_code == 200:
            return response.json()["signature"]
        else:
            print(f"Server validation failed: {response.status_code} {response.text}", file=sys.stderr)
            sys.exit(1)
    except Exception as e:
        print(f"Error contacting server: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python validate_and_sign.py <license_key> <build_time>", file=sys.stderr)
        sys.exit(1)

    license_key = sys.argv[1]
    build_time = sys.argv[2]

    signature = get_signature_from_server(license_key, build_time)
    print(signature)

