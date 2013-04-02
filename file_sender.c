#include "file_sender.h"

void *send_file_to_client(void *ptr)
{
	struct _message *mes;
	mes = (struct _message *)ptr;
  printf("client index: %d\n content:\n%s\n size of file: %d\n", mes->index, mes->file, mes->size);
	write(mes->index, mes->file, mes->size);
	return;
}
