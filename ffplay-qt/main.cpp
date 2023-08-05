extern "C"
{
#include <libavformat/avformat.h>
#include <libavcodec/avcodec.h>
}

int main(int argc, char *argv[])
{
    char version[256];
    snprintf(&version[0], sizeof(version), "%d.%d.%d", (avformat_version() >> 16) & 0xffff,
             (avformat_version() >>  8) & 0x00ff,
             (avformat_version()      ) & 0x00ff);
    printf("avformat version: %s\n", version);
    return 0;
}
