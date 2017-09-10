.class Ljavax/mail/EventQueue$QueueElement;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueueElement"
.end annotation


# instance fields
.field event:Ljavax/mail/event/MailEvent;

.field next:Ljavax/mail/EventQueue$QueueElement;

.field prev:Ljavax/mail/EventQueue$QueueElement;

.field private final this$0:Ljavax/mail/EventQueue;

.field vector:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljavax/mail/EventQueue;Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 1
    .param p2, "event"    # Ljavax/mail/event/MailEvent;
    .param p3, "vector"    # Ljava/util/Vector;

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Ljavax/mail/EventQueue$QueueElement;->this$0:Ljavax/mail/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    .line 47
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    .line 48
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 49
    iput-object v0, p0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 52
    iput-object p2, p0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 53
    iput-object p3, p0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 54
    return-void
.end method
