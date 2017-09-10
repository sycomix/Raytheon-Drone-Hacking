.class Lorg/mortbay/jetty/Response$NullOutput;
.super Ljavax/servlet/ServletOutputStream;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullOutput"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/Response$1;

    .prologue
    .line 1155
    invoke-direct {p0}, Lorg/mortbay/jetty/Response$NullOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    return-void
.end method
