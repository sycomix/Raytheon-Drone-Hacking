.class public Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;
.super Ljava/lang/Object;
.source "MailMonitor.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private beginDate:Ljava/util/Date;

.field private chatMonitorLevel:Ljava/lang/String;

.field private destUserName:Ljava/lang/String;

.field private draftMonitorLevel:Ljava/lang/String;

.field private endDate:Ljava/util/Date;

.field private incomingEmailMonitorLevel:Ljava/lang/String;

.field private outgoingEmailMonitorLevel:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 46
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->requestId:Ljava/lang/String;

    .line 64
    const-string v0, "destUserName"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->destUserName:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string v1, "beginDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->beginDate:Ljava/util/Date;

    .line 66
    sget-object v0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    const-string v1, "endDate"

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->endDate:Ljava/util/Date;

    .line 67
    const-string v0, "incomingEmailMonitorLevel"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->incomingEmailMonitorLevel:Ljava/lang/String;

    .line 68
    const-string v0, "outgoingEmailMonitorLevel"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->outgoingEmailMonitorLevel:Ljava/lang/String;

    .line 69
    const-string v0, "draftMonitorLevel"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->draftMonitorLevel:Ljava/lang/String;

    .line 70
    const-string v0, "chatMonitorLevel"

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->chatMonitorLevel:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getBeginDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->beginDate:Ljava/util/Date;

    return-object v0
.end method

.method public getChatMonitorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->chatMonitorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->destUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getDraftMonitorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->draftMonitorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIncomingEmailMonitorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->incomingEmailMonitorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoingEmailMonitorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->outgoingEmailMonitorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setBeginDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "beginDate"    # Ljava/util/Date;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->beginDate:Ljava/util/Date;

    .line 95
    return-void
.end method

.method public setChatMonitorLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatMonitorLevel"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->chatMonitorLevel:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setDestUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destUserName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->destUserName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDraftMonitorLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "draftMonitorLevel"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->draftMonitorLevel:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->endDate:Ljava/util/Date;

    .line 103
    return-void
.end method

.method public setIncomingEmailMonitorLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "incomingEmailMonitorLevel"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->incomingEmailMonitorLevel:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOutgoingEmailMonitorLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "outgoingEmailMonitorLevel"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->outgoingEmailMonitorLevel:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->requestId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toGenericEntry()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 144
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "destUserName"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->destUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "beginDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->beginDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "endDate"

    sget-object v2, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "incomingEmailMonitorLevel"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->incomingEmailMonitorLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "outgoingEmailMonitorLevel"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->outgoingEmailMonitorLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "draftMonitorLevel"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->draftMonitorLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "chatMonitorLevel"

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/audit/MailMonitor;->chatMonitorLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method
