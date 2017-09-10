.class Lorg/mortbay/jetty/deployer/ContextDeployer$1;
.super Ljava/lang/Object;
.source "ContextDeployer.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final this$0:Lorg/mortbay/jetty/deployer/ContextDeployer;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$1;->this$0:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    :try_start_0
    const-string v2, ".xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
