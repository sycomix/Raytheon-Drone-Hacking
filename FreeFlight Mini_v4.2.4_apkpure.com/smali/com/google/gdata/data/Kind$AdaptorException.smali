.class public Lcom/google/gdata/data/Kind$AdaptorException;
.super Lcom/google/gdata/util/ServiceException;
.source "Kind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Kind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptorException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 158
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/Kind$AdaptorException;->setHttpErrorCodeOverride(I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/Kind$AdaptorException;->setHttpErrorCodeOverride(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/Kind$AdaptorException;->setHttpErrorCodeOverride(I)V

    .line 169
    return-void
.end method
