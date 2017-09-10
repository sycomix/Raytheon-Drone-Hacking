.class Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;
.super Ljava/lang/Object;
.source "SelectorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeSelectableChannel"
.end annotation


# instance fields
.field final _attachment:Ljava/lang/Object;

.field final _channel:Ljava/nio/channels/SelectableChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_channel:Ljava/nio/channels/SelectableChannel;

    .line 908
    iput-object p2, p0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_attachment:Ljava/lang/Object;

    .line 909
    return-void
.end method
