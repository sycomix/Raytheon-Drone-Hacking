.class public Lorg/mortbay/util/ajax/JSON$ReaderSource;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderSource"
.end annotation


# instance fields
.field private _next:I

.field private _reader:Ljava/io/Reader;

.field private scratch:[C


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;

    .prologue
    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    .line 1252
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    .line 1253
    return-void
.end method

.method private getNext()V
    .locals 2

    .prologue
    .line 1288
    iget v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    if-gez v1, :cond_0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    iput v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1263
    invoke-direct {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1264
    iget v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    if-gez v0, :cond_0

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->scratch:[C

    .line 1267
    const/4 v0, 0x0

    .line 1269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 1274
    invoke-direct {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1275
    iget v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    int-to-char v0, v1

    .line 1276
    .local v0, "c":C
    const/4 v1, -0x1

    iput v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    .line 1277
    return v0
.end method

.method public peek()C
    .locals 1

    .prologue
    .line 1282
    invoke-direct {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1283
    iget v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    int-to-char v0, v0

    return v0
.end method

.method public scratchBuffer()[C
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->scratch:[C

    if-nez v0, :cond_0

    .line 1304
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->scratch:[C

    .line 1305
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->scratch:[C

    return-object v0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 1257
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    .line 1258
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->_next:I

    .line 1259
    return-void
.end method
