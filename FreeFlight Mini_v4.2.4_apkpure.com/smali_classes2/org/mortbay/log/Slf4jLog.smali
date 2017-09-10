.class public Lorg/mortbay/log/Slf4jLog;
.super Ljava/lang/Object;
.source "Slf4jLog.java"

# interfaces
.implements Lorg/mortbay/log/Logger;


# instance fields
.field private logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "org.mortbay.log"

    invoke-direct {p0, v0}, Lorg/mortbay/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    .line 32
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lorg/mortbay/log/Slf4jLog;

    invoke-direct {v0, p1}, Lorg/mortbay/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 109
    const-string v0, "setDebugEnabled not implemented"

    invoke-virtual {p0, v0, v1, v1}, Lorg/mortbay/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/mortbay/log/Slf4jLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
