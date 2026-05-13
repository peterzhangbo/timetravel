import struct
import math

width = 1024
height = 1024

file_size = 54 + 3 * width * height
# Signature(2) FileSize(4) Res1(2) Res2(2) Offset(4) HeaderSize(4) Width(4) Height(4) Planes(2) BPP(2)
bmp_header = struct.pack('<ccIHHIIIIHH', b'B', b'M', file_size, 0, 0, 54, 40, width, height, 1, 24)
bmp_header += struct.pack('<IIIIII', 0, 3 * width * height, 2835, 2835, 0, 0)

with open('icon.bmp', 'wb') as f:
    f.write(bmp_header)
    for y in range(height):
        t = y / (height - 1)
        if t < 0.5:
            nt = t * 2
            r = int(255 * (1 - nt) + 255 * nt)
            g = int(140 * (1 - nt) + 0 * nt)
            b = int(0 * (1 - nt) + 127 * nt)
        else:
            nt = (t - 0.5) * 2
            r = int(255 * (1 - nt) + 48 * nt)
            g = int(0 * (1 - nt) + 0 * nt)
            b = int(127 * (1 - nt) + 74 * nt)
            
        for x in range(width):
            cx = x - width / 2
            cy = y - height / 2
            dist = math.sqrt(cx*cx + cy*cy)
            
            pr, pg, pb = r, g, b
            
            if dist < 400 and dist > 380:
                pr, pg, pb = 255, 255, 255
            elif dist < 300 and dist > 290:
                pr, pg, pb = 255, 255, 255
            elif dist < 100:
                pr, pg, pb = 255, 200, 0
                
            # Each row must be padded to a multiple of 4 bytes. 
            # 1024 * 3 = 3072, which is already a multiple of 4, so no padding needed.
            f.write(struct.pack('<BBB', pb, pg, pr))

print("icon.bmp created.")
