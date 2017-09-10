.class public Ljavax/mail/event/ConnectionEvent;
.super Ljavax/mail/event/MailEvent;
.source "ConnectionEvent.java"


# static fields
.field public static final CLOSED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final OPENED:I = 0x1

.field private static final serialVersionUID:J = -0x19bffd629136067dL


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 63
    iput p2, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    .line 64
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    check-cast p1, Ljavax/mail/event/ConnectionListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->opened(Ljavax/mail/event/ConnectionEvent;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local p1    # "listener":Ljava/lang/Object;
    :cond_1
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 81
    check-cast p1, Ljavax/mail/event/ConnectionListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->disconnected(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 82
    .restart local p1    # "listener":Ljava/lang/Object;
    :cond_2
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 83
    check-cast p1, Ljavax/mail/event/ConnectionListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->closed(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return v0
.end method
