.class public Lcom/parrot/freeflight/core/BaseDeviceConnector;
.super Ljava/lang/Object;
.source "BaseDeviceConnector.java"


# static fields
.field public static final PRODUCT_VALUE:Ljava/lang/String; = "productValue"

.field public static final REMOTE_VALUE:Ljava/lang/String; = "remoteValue"


# instance fields
.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/core/BaseDeviceConnector;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method
