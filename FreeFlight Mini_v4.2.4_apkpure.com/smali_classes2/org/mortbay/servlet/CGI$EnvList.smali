.class Lorg/mortbay/servlet/CGI$EnvList;
.super Ljava/lang/Object;
.source "CGI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/CGI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnvList"
.end annotation


# instance fields
.field private envMap:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    .line 401
    return-void
.end method

.method constructor <init>(Lorg/mortbay/servlet/CGI$EnvList;)V
    .locals 2
    .param p1, "l"    # Lorg/mortbay/servlet/CGI$EnvList;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    .line 406
    return-void
.end method

.method static access$000(Lorg/mortbay/servlet/CGI$EnvList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/servlet/CGI$EnvList;

    .prologue
    .line 394
    iget-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getEnvArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/mortbay/servlet/CGI$EnvList;->envMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
