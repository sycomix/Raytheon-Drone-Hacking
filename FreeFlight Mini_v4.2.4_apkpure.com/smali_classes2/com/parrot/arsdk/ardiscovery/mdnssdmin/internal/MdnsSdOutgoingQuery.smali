.class public Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;
.super Ljava/lang/Object;
.source "MdnsSdOutgoingQuery.java"


# instance fields
.field private final questions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "questions"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->questions:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method private static writeName(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 79
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "segs":[Ljava/lang/String;
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 82
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget-char v0, v7, v3

    .line 86
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "ch":C
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 89
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 90
    return-void
.end method

.method private static writeU16(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "val"    # I

    .prologue
    .line 67
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 104
    invoke-static {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 106
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->questions:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 108
    invoke-static {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 110
    invoke-static {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 112
    invoke-static {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 115
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->questions:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 118
    .local v1, "question":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeName(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 120
    const/16 v5, 0xc

    invoke-static {v0, v5}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 122
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->writeU16(Ljava/io/ByteArrayOutputStream;I)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "question":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
