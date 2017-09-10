.class Lorg/mortbay/util/IO$Singleton;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static final __instance:Lorg/mortbay/util/IO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v1, Lorg/mortbay/util/IO;

    invoke-direct {v1}, Lorg/mortbay/util/IO;-><init>()V

    sput-object v1, Lorg/mortbay/util/IO$Singleton;->__instance:Lorg/mortbay/util/IO;

    .line 56
    :try_start_0
    sget-object v1, Lorg/mortbay/util/IO$Singleton;->__instance:Lorg/mortbay/util/IO;

    invoke-virtual {v1}, Lorg/mortbay/util/IO;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
