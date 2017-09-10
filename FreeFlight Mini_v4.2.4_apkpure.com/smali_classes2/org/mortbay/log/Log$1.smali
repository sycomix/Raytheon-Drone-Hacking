.class final Lorg/mortbay/log/Log$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    const-string v0, "org.mortbay.log.class"

    const-string v3, "org.mortbay.log.Slf4jLog"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/log/Log;->__logClass:Ljava/lang/String;

    .line 58
    const-string v0, "VERBOSE"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/mortbay/log/Log;->__verbose:Z

    .line 59
    const-string v0, "IGNORED"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lorg/mortbay/log/Log;->__ignored:Z

    .line 60
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0
.end method
