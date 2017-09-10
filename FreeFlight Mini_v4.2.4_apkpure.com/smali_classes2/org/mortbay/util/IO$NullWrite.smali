.class Lorg/mortbay/util/IO$NullWrite;
.super Ljava/io/Writer;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullWrite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/IO$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/util/IO$1;

    .prologue
    .line 461
    invoke-direct {p0}, Lorg/mortbay/util/IO$NullWrite;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 467
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 468
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # I
    .param p3, "l"    # I

    .prologue
    .line 469
    return-void
.end method

.method public write([C)V
    .locals 0
    .param p1, "b"    # [C

    .prologue
    .line 465
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "b"    # [C
    .param p2, "o"    # I
    .param p3, "l"    # I

    .prologue
    .line 466
    return-void
.end method
