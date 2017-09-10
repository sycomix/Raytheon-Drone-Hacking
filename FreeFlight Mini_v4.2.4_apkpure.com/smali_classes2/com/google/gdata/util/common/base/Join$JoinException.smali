.class public Lcom/google/gdata/util/common/base/Join$JoinException;
.super Ljava/lang/RuntimeException;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/IOException;Lcom/google/gdata/util/common/base/Join$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/IOException;
    .param p2, "x1"    # Lcom/google/gdata/util/common/base/Join$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/gdata/util/common/base/Join$JoinException;-><init>(Ljava/io/IOException;)V

    return-void
.end method
