.class public final Lcom/google/gdata/util/common/io/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# instance fields
.field private final buf:[C

.field private final cbuf:Ljava/nio/CharBuffer;

.field private final lineBuf:Lcom/google/gdata/util/common/io/LineBuffer;

.field private final lines:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final readable:Ljava/lang/Readable;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 1
    .param p1, "readable"    # Ljava/lang/Readable;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->buf:[C

    .line 38
    iget-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->buf:[C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->lines:Ljava/util/Queue;

    .line 41
    new-instance v0, Lcom/google/gdata/util/common/io/LineReader$1;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/io/LineReader$1;-><init>(Lcom/google/gdata/util/common/io/LineReader;)V

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->lineBuf:Lcom/google/gdata/util/common/io/LineBuffer;

    .line 52
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/google/gdata/util/common/io/LineReader;->readable:Ljava/lang/Readable;

    .line 54
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Reader;

    .end local p1    # "readable":Ljava/lang/Readable;
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/util/common/io/LineReader;->reader:Ljava/io/Reader;

    .line 55
    return-void

    .line 54
    .restart local p1    # "readable":Ljava/lang/Readable;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/gdata/util/common/io/LineReader;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/util/common/io/LineReader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/gdata/util/common/io/LineReader;->lines:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->lines:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 73
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/gdata/util/common/io/LineReader;->buf:[C

    iget-object v3, p0, Lcom/google/gdata/util/common/io/LineReader;->buf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 76
    .local v0, "read":I
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->lineBuf:Lcom/google/gdata/util/common/io/LineBuffer;

    invoke-virtual {v1}, Lcom/google/gdata/util/common/io/LineBuffer;->finish()V

    .line 82
    .end local v0    # "read":I
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->lines:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->readable:Ljava/lang/Readable;

    iget-object v2, p0, Lcom/google/gdata/util/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-interface {v1, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    goto :goto_1

    .line 80
    .restart local v0    # "read":I
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineReader;->lineBuf:Lcom/google/gdata/util/common/io/LineBuffer;

    iget-object v2, p0, Lcom/google/gdata/util/common/io/LineReader;->buf:[C

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/gdata/util/common/io/LineBuffer;->add([CII)V

    goto :goto_0
.end method
