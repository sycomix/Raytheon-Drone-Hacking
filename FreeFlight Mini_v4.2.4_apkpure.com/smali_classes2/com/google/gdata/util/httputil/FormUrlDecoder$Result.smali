.class Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/httputil/FormUrlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field encoding:Ljava/lang/String;

.field params:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->params:Ljava/util/LinkedList;

    .line 48
    if-nez p1, :cond_0

    const-string p1, "ISO-8859-1"

    .end local p1    # "encoding":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->encoding:Ljava/lang/String;

    .line 49
    return-void
.end method
