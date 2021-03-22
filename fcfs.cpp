#include<bits/stdc++.h>
using namespace std;
void print_chart(queue<int> q)
{
cout<<"\n Gantt Chart is : ";
while(!q.empty())
{
cout<<" P"<<q.front()<<" ";
q.pop();
}
}
int main()
{
queue<int> gantt_chart;


int n,arrival_time[100],burst_time[100],completion_time[100],process_id[100],waiting_time[100];
cout<<"Enter number of processes: ";
cin>>n;
for(int i=0;i<n;i++)
{
 cout<<"\n Enter process id: ";
 cin>>process_id[i];
 cout<<"\n Enter arrival Time: ";
 cin>>arrival_time[i];
 cout<<"\n enter burst time: ";
 cin>>burst_time[i];
}
for(int i=0;i<n;i++)
{
for(int j=0;j<n-i;j++)
{
if(arrival_time[j]>arrival_time[j+1])
{
 swap(arrival_time[j],arrival_time[j+1]);
 swap(process_id[j],process_id[j+1]);
 swap(burst_time[j],burst_time[j+1]);
 }
 }
 }
 int timer=0;
 float sumwait=0;
 cout<<"\n CPU Scheduling FCFS.";
 for(int i=0;i<n;i++)
 {
  if(timer<=arrival_time[i])
   timer=arrival_time[i];
  waiting_time[i]=timer-arrival_time[i];
  timer=timer+burst_time[i];
  completion_time[i]=timer;
  sumwait+=waiting_time[i];
  cout<<"\n Process ID: "<<process_id[i];
  
  cout<<" Burst Time: "<<burst_time[i];
  cout<<" Completion time: "<<completion_time[i];
  cout<<" Waiting Time: "<<waiting_time[i]<<endl;
 gantt_chart.push(process_id[i]);
 }
 float avgwait=sumwait/n;
 cout<<"\n Average Waiting Time: "<<avgwait;
 print_chart(gantt_chart);
 }
  





