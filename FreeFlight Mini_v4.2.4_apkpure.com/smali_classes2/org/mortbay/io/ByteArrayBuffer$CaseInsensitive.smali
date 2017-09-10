.class public Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/mortbay/io/ByteArrayBuffer;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/mortbay/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/ByteArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "o"    # I
    .param p3, "l"    # I
    .param p4, "rw"    # I

    .prologue
    .line 419
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 420
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 424
    check-cast p1, Lorg/mortbay/io/Buffer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    return v0
.end method
