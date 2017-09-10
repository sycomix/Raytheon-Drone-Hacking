.class Lorg/mortbay/jetty/security/HashUserRealm$1;
.super Ljava/lang/Object;
.source "HashUserRealm.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final this$0:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$1;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 393
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    .local v1, "f":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/HashUserRealm$1;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-static {v3}, Lorg/mortbay/jetty/security/HashUserRealm;->access$200(Lorg/mortbay/jetty/security/HashUserRealm;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->compareTo(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 397
    const/4 v2, 0x1

    .line 404
    :cond_0
    :goto_0
    return v2

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
