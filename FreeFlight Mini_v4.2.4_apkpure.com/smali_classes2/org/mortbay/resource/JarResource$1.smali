.class Lorg/mortbay/resource/JarResource$1;
.super Ljava/io/FilterInputStream;
.source "JarResource.java"


# instance fields
.field private final this$0:Lorg/mortbay/resource/JarResource;


# direct methods
.method constructor <init>(Lorg/mortbay/resource/JarResource;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/mortbay/resource/JarResource$1;->this$0:Lorg/mortbay/resource/JarResource;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lorg/mortbay/util/IO;->getClosedStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/JarResource$1;->in:Ljava/io/InputStream;

    return-void
.end method
