.class Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
.super Ljava/lang/Object;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheBlock"
.end annotation


# instance fields
.field public final bytes:[B

.field private next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

.field private final this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

.field private triedNext:Z


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;[B)V
    .locals 1
    .param p2, "bytes"    # [B

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->triedNext:Z

    .line 44
    iput-object p2, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->bytes:[B

    .line 45
    return-void
.end method


# virtual methods
.method public getNext()Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->triedNext:Z

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->triedNext:Z

    .line 54
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->this$0:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-static {v0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;->access$000(Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;)Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    .line 55
    iget-object v0, p0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;->next:Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream$CacheBlock;

    goto :goto_0
.end method
