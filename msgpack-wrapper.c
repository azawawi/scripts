
#include <msgpack.h>
#include <stdio.h>

extern void wrapped_msgpack_sbuffer_init(msgpack_sbuffer* sbuf)
{
    msgpack_sbuffer_init(sbuf);
}

extern void wrapped_msgpack_sbuffer_destroy(msgpack_sbuffer* sbuf)
{
    msgpack_sbuffer_destroy(sbuf);
}

extern msgpack_sbuffer* wrapped_msgpack_sbuffer_new(void)
{
    return msgpack_sbuffer_new();
}

extern void wrapped_msgpack_sbuffer_free(msgpack_sbuffer* sbuf)
{
    msgpack_sbuffer_free(sbuf);
}

extern int wrapped_msgpack_sbuffer_write(void* data, const char* buf, size_t len)
{
    return msgpack_sbuffer_write(data, buf, len);
}

extern char* wrapped_msgpack_sbuffer_release(msgpack_sbuffer* sbuf)
{
    return msgpack_sbuffer_release(sbuf);
}

extern void wrapped_msgpack_sbuffer_clear(msgpack_sbuffer* sbuf)
{
    msgpack_sbuffer_clear(sbuf);
}

extern void wrapped_msgpack_packer_init(msgpack_packer* pk, void* data) {
    msgpack_packer_init(pk, data, msgpack_sbuffer_write);
}

extern void wrapped_msgpack_pack_array(msgpack_packer* pk, size_t n) {
    msgpack_pack_array(pk, n);
}

extern void wrapped_msgpack_pack_int(msgpack_packer* pk, int d) {
    msgpack_pack_int(pk, d);
}

extern void wrapped_msgpack_pack_true(msgpack_packer* pk) {
    msgpack_pack_true(pk);
}

extern void wrapped_msgpack_pack_false(msgpack_packer* pk) {
    msgpack_pack_false(pk);
}

extern int wrapped_msgpack_pack_str(msgpack_packer* pk, size_t l) {
    return msgpack_pack_str(pk, l);
}

extern int wrapped_msgpack_pack_str_body(msgpack_packer* pk, const void* b, size_t l) {
    return msgpack_pack_str_body(pk, b, l);
}

// /* deserialize the buffer into msgpack_object instance. */
// /* deserialized object is valid during the msgpack_zone instance alive. */
// msgpack_zone_init(&mempool, 2048);
// 
// msgpack_unpack(sbuf.data, sbuf.size, NULL, &mempool, &deserialized);
// 
// /* print the deserialized object. */
// msgpack_object_print(stdout, deserialized);
// puts("");
// 
// msgpack_zone_destroy(&mempool);
// msgpack_sbuffer_destroy(&sbuf);
