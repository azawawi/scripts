#include <msgpack.h>

void test()
{
    size_t size = 10000000;
    msgpack_sbuffer buf;
    msgpack_packer * pk;
    size_t upk_pos = 0;
    msgpack_unpacked msg;

    msgpack_sbuffer_init(&buf);

    pk = msgpack_packer_new(&buf, msgpack_sbuffer_write);

    msgpack_pack_array(pk, size);
    {
        size_t idx = 0;
        for (; idx < size; ++idx)
            msgpack_pack_uint32(pk, 1);
    }
    msgpack_packer_free(pk);

    msgpack_unpacked_init(&msg);

    while (msgpack_unpack_next(&msg, buf.data, buf.size, &upk_pos) == MSGPACK_UNPACK_SUCCESS) {
    }

    msgpack_sbuffer_destroy(&buf);
}

int main(void)
{
    // printf("sizeof(msgpack_object_type) = %ld\n", sizeof(msgpack_object_type));
    // printf("sizeof(msgpack_object_union) = %ld\n", sizeof(msgpack_object_union));
    // printf("sizeof(msgpack_object) = %ld\n", sizeof(msgpack_object));
    // printf("MSGPACK_OBJECT_BOOLEAN = %d\n", MSGPACK_OBJECT_BOOLEAN);
    int i = 0;
    for (; i < 10; ++i) test();
    return 0;
}
