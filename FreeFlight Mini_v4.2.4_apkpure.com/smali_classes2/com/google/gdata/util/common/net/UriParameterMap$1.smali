.class Lcom/google/gdata/util/common/net/UriParameterMap$1;
.super Ljava/lang/Object;
.source "UriParameterMap.java"

# interfaces
.implements Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/net/UriParameterMap;->merge(Ljava/lang/String;Ljava/nio/charset/Charset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/net/UriParameterMap;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/net/UriParameterMap;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/gdata/util/common/net/UriParameterMap$1;->this$0:Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/util/common/net/UriParameterMap$1;->this$0:Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    return-void
.end method
