.class public Lcom/google/gdata/data/BaseEntry$AtomHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "BaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;,
        Lcom/google/gdata/data/BaseEntry$AtomHandler$UpdatedHandler;,
        Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;,
        Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/BaseEntry;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 1051
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 10
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler;"
    const-string v6, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1084
    const-string v6, "id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1086
    new-instance v6, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;

    invoke-direct {v6, p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;-><init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V

    .line 1207
    :goto_0
    return-object v6

    .line 1088
    :cond_0
    const-string v6, "published"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    new-instance v6, Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;

    invoke-direct {v6, p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$PublishedHandler;-><init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V

    goto :goto_0

    .line 1092
    :cond_1
    const-string v6, "updated"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1094
    new-instance v6, Lcom/google/gdata/data/BaseEntry$AtomHandler$UpdatedHandler;

    invoke-direct {v6, p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$UpdatedHandler;-><init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V

    goto :goto_0

    .line 1096
    :cond_2
    const-string v6, "title"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1098
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v2

    .line 1101
    .local v2, "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_3

    .line 1102
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 1106
    :cond_3
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    .line 1107
    iget-object v6, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 1109
    .end local v2    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_4
    const-string v6, "summary"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1111
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v2

    .line 1114
    .restart local v2    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_5

    .line 1115
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateSummary:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 1119
    :cond_5
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    .line 1120
    iget-object v6, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 1122
    .end local v2    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_6
    const-string v6, "rights"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1124
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v2

    .line 1127
    .restart local v2    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_7

    .line 1128
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateRights:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 1132
    :cond_7
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->rights:Lcom/google/gdata/data/TextConstruct;

    .line 1133
    iget-object v6, v2, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 1135
    .end local v2    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_8
    const-string v6, "content"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1137
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    if-eqz v6, :cond_9

    .line 1138
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 1142
    :cond_9
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v6, v7, p3}, Lcom/google/gdata/data/BaseEntry;->getContentHandlerInfo(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v2

    .line 1145
    .local v2, "chi":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v2, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    .line 1146
    iget-object v6, v2, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 1148
    .end local v2    # "chi":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    :cond_a
    const-string v6, "category"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1150
    new-instance v1, Lcom/google/gdata/data/Category;

    invoke-direct {v1}, Lcom/google/gdata/data/Category;-><init>()V

    .line 1151
    .local v1, "cat":Lcom/google/gdata/data/Category;
    new-instance v6, Lcom/google/gdata/data/Category$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v8, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v8, v8, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v8, v8, Lcom/google/gdata/data/BaseEntry$EntryState;->categories:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/google/gdata/data/Category$AtomHandler;-><init>(Lcom/google/gdata/data/Category;Lcom/google/gdata/data/ExtensionProfile;Ljava/util/Set;Lcom/google/gdata/data/Kind$Adaptable;)V

    goto/16 :goto_0

    .line 1154
    .end local v1    # "cat":Lcom/google/gdata/data/Category;
    :cond_b
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1156
    new-instance v5, Lcom/google/gdata/data/Link;

    invoke-direct {v5}, Lcom/google/gdata/data/Link;-><init>()V

    .line 1157
    .local v5, "link":Lcom/google/gdata/data/Link;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v6, Lcom/google/gdata/data/Link$AtomHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v5, v7}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 1160
    .end local v5    # "link":Lcom/google/gdata/data/Link;
    :cond_c
    const-string v6, "author"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1163
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v8, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extendedClass:Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, p1, p2}, Lcom/google/gdata/data/BaseEntry;->getExtensionDescription(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v4

    .line 1165
    .local v4, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1167
    invoke-virtual {v4}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/google/gdata/data/ExtensionPoint;->createExtensionInstance(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 1172
    .local v0, "author":Lcom/google/gdata/data/Person;
    :goto_1
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v6, p1, p2, p3}, Lcom/google/gdata/data/Person;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v6

    goto/16 :goto_0

    .line 1170
    .end local v0    # "author":Lcom/google/gdata/data/Person;
    :cond_d
    new-instance v0, Lcom/google/gdata/data/Person;

    invoke-direct {v0}, Lcom/google/gdata/data/Person;-><init>()V

    .restart local v0    # "author":Lcom/google/gdata/data/Person;
    goto :goto_1

    .line 1175
    .end local v0    # "author":Lcom/google/gdata/data/Person;
    .end local v4    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_e
    const-string v6, "contributor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1177
    new-instance v3, Lcom/google/gdata/data/Person;

    invoke-direct {v3}, Lcom/google/gdata/data/Person;-><init>()V

    .line 1178
    .local v3, "contributor":Lcom/google/gdata/data/Person;
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v6, Lcom/google/gdata/data/Person$AtomHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v3, v7}, Lcom/google/gdata/data/Person$AtomHandler;-><init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 1181
    .end local v3    # "contributor":Lcom/google/gdata/data/Person;
    :cond_f
    const-string v6, "source"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1183
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    new-instance v7, Lcom/google/gdata/data/Source;

    invoke-direct {v7}, Lcom/google/gdata/data/Source;-><init>()V

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    .line 1184
    new-instance v6, Lcom/google/gdata/data/Source$SourceHandler;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v7, v7, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v7, Lcom/google/gdata/data/BaseEntry$EntryState;->source:Lcom/google/gdata/data/Source;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v7, v8}, Lcom/google/gdata/data/Source$SourceHandler;-><init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 1188
    :cond_10
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-static {v6}, Lcom/google/gdata/data/BaseEntry;->access$100(Lcom/google/gdata/data/BaseEntry;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1190
    const-string v6, "control"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1192
    iget-object v6, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v6, v6, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    new-instance v7, Lcom/google/gdata/data/PubControl;

    invoke-direct {v7}, Lcom/google/gdata/data/PubControl;-><init>()V

    iput-object v7, v6, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    .line 1193
    new-instance v6, Lcom/google/gdata/data/PubControl$AtomHandler;

    iget-object v7, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v7, v7, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v7, v7, Lcom/google/gdata/data/BaseEntry$EntryState;->pubControl:Lcom/google/gdata/data/PubControl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v7, v8}, Lcom/google/gdata/data/PubControl$AtomHandler;-><init>(Lcom/google/gdata/data/PubControl;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 1195
    :cond_11
    const-string v6, "edited"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1197
    new-instance v6, Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;

    invoke-direct {v6, p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;-><init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V

    goto/16 :goto_0

    .line 1203
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v6

    goto/16 :goto_0

    .line 1207
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler;"
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    const-string v0, "etag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseEntry;->setEtag(Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 1063
    :cond_0
    const-string v0, "fields"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseEntry;->setSelectedFields(Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_1
    const-string v0, "kind"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseEntry;->setKind(Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1216
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 1218
    :cond_0
    return-void
.end method
